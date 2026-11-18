/**
 * =============================================================================
 * @file dbap_csv_loader.js
 * @project GEN-patches / Swarm-Mangler 3D Spatial Ecosystem
 * @description Dynamic CSV speaker layout parser & buffer updater for Max/MSP.
 *              Fills 3-channel buffer~ 'spk_pos' (Ch1: X, Ch2: Y, Ch3: Z)
 *              and broadcasts layout telemetry to WebSocket Three.js viewer.
 * @author Max Bruckert (assisted by Gemini)
 * =============================================================================
 */

autowatch = 1;
inlets = 1;
outlets = 3; // 0: gen~ params, 1: UI info/names, 2: WebSocket bridge OSC

var bufferName = "spk_pos";

function findFile(filename) {
    if (!filename) return null;
    
    // Strategy 1: Direct file open
    var f = new File(filename, "read");
    if (f && f.isopen) return f;
    
    // Extract bare filename (strip any path prefixes)
    var bareName = filename;
    var lastSlash = filename.lastIndexOf("/");
    if (lastSlash !== -1) {
        bareName = filename.substring(lastSlash + 1);
        f = new File(bareName, "read");
        if (f && f.isopen) return f;
    }
    
    // Strategy 2: Resolve relative to patcher directory
    if (this.patcher && this.patcher.filepath) {
        var pPath = this.patcher.filepath;
        var pSlash = pPath.lastIndexOf("/");
        if (pSlash !== -1) {
            var pDir = pPath.substring(0, pSlash + 1);
            
            // Try pDir + filename
            f = new File(pDir + filename, "read");
            if (f && f.isopen) return f;
            
            // Try pDir + "layouts/" + bareName
            f = new File(pDir + "layouts/" + bareName, "read");
            if (f && f.isopen) return f;
            
            // Try pDir + bareName
            f = new File(pDir + bareName, "read");
            if (f && f.isopen) return f;
        }
    }
    
    // Strategy 3: Try "layouts/" + bareName
    f = new File("layouts/" + bareName, "read");
    if (f && f.isopen) return f;
    
    return null;
}

function read(filename) {
    if (!filename) return;
    
    var f = findFile(filename);
    if (!f || !f.isopen) {
        post("[dbap_csv_loader] Error: cannot find or open file: " + filename + "\n");
        return;
    }
    
    var speakers = [];
    var isHeader = true;
    
    while (f.position < f.eof) {
        var line = f.readline();
        if (!line) continue;
        line = line.trim();
        if (line.length === 0) continue;
        
        // Skip UTF-8 BOM if present
        if (line.charCodeAt(0) === 0xFEFF) {
            line = line.substring(1);
        }
        
        var parts = line.split(";");
        if (parts.length < 4) {
            // Try comma separator if semicolon failed
            parts = line.split(",");
        }
        
        if (isHeader) {
            isHeader = false;
            continue;
        }
        
        var name = parts[0].trim();
        var x = parseFloat(parts[1].replace(",", "."));
        var y = parseFloat(parts[2].replace(",", "."));
        var z = parseFloat(parts[3].replace(",", "."));
        
        if (!isNaN(x) && !isNaN(y) && !isNaN(z)) {
            speakers.push({ name: name, x: x, y: y, z: z });
        }
    }
    f.close();
    
    var count = speakers.length;
    if (count === 0) {
        post("[dbap_csv_loader] Warning: no valid speaker coordinates parsed.\n");
        return;
    }
    
    // Update Max buffer~ spk_pos
    var b = new Buffer(bufferName);
    if (b && b.isopen) {
        // Poke up to 32 speaker channels (1-indexed channels in Max Buffer API)
        for (var i = 0; i < 32; i++) {
            if (i < count) {
                b.poke(1, i, speakers[i].x);
                b.poke(2, i, speakers[i].y);
                b.poke(3, i, speakers[i].z);
            } else {
                b.poke(1, i, 0.0);
                b.poke(2, i, 0.0);
                b.poke(3, i, 0.0);
            }
        }
    } else {
        post("[dbap_csv_loader] Warning: buffer~ '" + bufferName + "' not found.\n");
    }
    
    // Outlet 0: Notify gen~ with num_speakers
    outlet(0, "num_speakers", count);
    
    // Outlet 1: Speaker names and summary list
    var names = ["speakers", count];
    for (var j = 0; j < count; j++) {
        names.push(speakers[j].name);
    }
    outlet(1, names);
    
    // Outlet 2: Broadcast to WebSocket bridge (max_bridge.js) for Three.js viewer
    outlet(2, "/spk/clear");
    for (var k = 0; k < count; k++) {
        outlet(2, "/spk/add", speakers[k].name, speakers[k].x, speakers[k].y, speakers[k].z);
    }
    outlet(2, "/spk/done", count);
    
    post("[dbap_csv_loader] Successfully loaded " + count + " speakers from: " + filename + "\n");
}

function preset(name) {
    if (name === "maxBstudio") {
        read("maxBstudio-speaker-setup.csv");
    } else if (name === "gramestudio") {
        read("gramestudio-speaker-setup.csv");
    } else {
        read(name);
    }
}

// Support drag and drop file path message
function anything() {
    var args = arrayfromargs(arguments);
    if (messagename === "read") {
        read(args[0]);
    } else {
        read(messagename);
    }
}
