{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 71.0, 68.0, 1138.0, 1095.0 ],
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.5, 93.0, 186.0, 27.0 ],
                    "text": "with V8 JSUI interface"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-110",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.5, 64.0, 475.0, 27.0 ],
                    "text": "32 multitap Delay Line & 16-Channel Spatialization Engine"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.5, 15.0, 281.0, 47.0 ],
                    "text": "Delays delays"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 532.0, 529.0, 43.0, 20.0 ],
                    "text": "trigger"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 529.0, 59.0, 20.0 ],
                    "text": "amp mod"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 489.0, 31.0, 20.0 ],
                    "text": "sine"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 281.0, 489.0, 45.0, 20.0 ],
                    "text": "burst 2"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 156.0, 489.0, 45.0, 20.0 ],
                    "text": "burst 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 489.0, 61.0, 20.0 ],
                    "text": "play sfiles"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 133.0, 188.0, 86.0, 22.0 ],
                    "text": "prepend buffer"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 17.0, 188.0, 102.0, 22.0 ],
                    "text": "prepend buf_taps"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 551.0, 130.0, 130.0 ]
                }
            },
            {
                "box": {
                    "embed": 1,
                    "embedstate": [
                        [ "bg_color", 0.01, 0.01, 0.015, 1 ],
                        [ "pivot_size", 0.1 ],
                        [ "playhead_size", 0.1 ],
                        [ "sphere_color", 1, 1, 1, 0.5 ],
                        [ "tap_color", 0, 0.7, 0.9, 0.8 ]
                    ],
                    "filename": "none",
                    "id": "obj-12",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 629.0, 868.0, 381.0, 181.0 ],
                    "textfile": {
                        "text": "/**\n * @file tap_manager.js\n * @description Professional 2D Sculptural UI for Multi-Tap Delay Engine.\n * Features: 32-tap distribution, 9 windowing models, \"del_in\" time-squeezing,\n * reactive glow, polyphonic \"Urn\" playheads, and full Pattr storage with \n * Inspector integration.\n * \n * @author Max Bruckert assisted by Gemini\n * \n * COMMANDS:\n * - max_delay [ms]      : Total duration (80-30000)\n * - del_in [0-1]        : Shifts the start of the taps (pre-delay)\n * - gravity_in/out      : [-100 to 100] Distribution curvature\n * - jitter [0-1]        : Non-linear temporal randomization\n * - mode [0/1]          : 0:Simple, 1:Mirror (Pivot at sphere X)\n * - window_type [0-8]   : Amplitude models (Gauss, Cos, Tri, Saw, Square...)\n * - reverse [0/1]       : Invert amplitude profile\n * - f_mix [0-100]       : Color morphing (Blue to Pink)\n * - f_on [0/1]          : Filter master toggle\n * - f_start/f_end [Hz]  : Spectral boundaries\n * - f_direction [0-3]   : Frequency modulation mode (Desc, Asc, Rand, Env)\n * - f_type [0-2]        : Filter nature (LP, HP, BP)\n * - resonance [0-1]     : Filter Q factor\n * - mix [0-1]           : Dry/Wet balance\n * - gain [0-5]          : Output drive\n * - feedback [0-100]    : Re-injection level & visual remanence\n * - hit [index]         : Trigger tap glow (from audio engine)\n * - trigger             : Launch a new playhead bubble\n * - panic / restore     : State management\n * \n * INSPECTOR ATTRIBUTES:\n * - bg_color, tap_color, sphere_color [RGBA]\n * - playhead_size, pivot_size [0..1]\n */\n\nautowatch = 1;\noutlets = 2;\nmgraphics.init();\nmgraphics.relative_coords = 0;\n\n// --- 1. PARAMETERS (PERSISTENT) ---\nvar numSteps = 32, maxDelay = 1000, delIn = 0.0;\nvar gravityIn = 0, gravityOut = 0, jitterValue = 0, appMode = 0; \nvar sphereX = 0.5, sphereY = 0.0;\nvar windowType = 0, isReverse = 0;\nvar fOn = 1, fMix = 0, fStart = 16000, fEnd = 800, resVal = 0.1, fDir = 0, fType = 0;\nvar mcMode = 0, offsetVal = 0, spreadVal = 0, fbVal = 0, mixVal = 0.5, gainVal = 1.0;\nvar playheadSize = 0.3, pivotSize = 0.5;\nvar bufName = \"buf_taps\";\n\n// --- 2. UI STATE & COLORS ---\nvar tapExcitations = new Array(32); for(var i=0; i<32; i++) tapExcitations[i] = 0;\nvar playheads = [], tapValues = new Array(32), ampValues = new Array(32), isDragging = false;\n\nvar colBg = [0.01, 0.01, 0.015, 1.0], colSphere = [1.0, 1.0, 1.0, 0.5];\nvar colBlue = [0.0, 0.7, 0.9, 0.8], colPink = [0.9, 0.1, 0.6, 0.8]; \n\n// --- 3. INSPECTOR ATTRIBUTES ---\ndeclareattribute(\"bg_color\", \"getbgcolor\", \"setbgcolor\", 1);\ndeclareattribute(\"tap_color\", \"gettapcolor\", \"settapcolor\", 1);\ndeclareattribute(\"sphere_color\", \"getspherecolor\", \"setspherecolor\", 1);\ndeclareattribute(\"playhead_size\", \"getphsize\", \"setphsize\", 1);\ndeclareattribute(\"pivot_size\", \"getpvsize\", \"setpvsize\", 1);\n\nfunction setbgcolor() { colBg = arrayfromargs(arguments); mgraphics.redraw(); } function getbgcolor() { return colBg; }\nfunction settapcolor() { colBlue = arrayfromargs(arguments); mgraphics.redraw(); } function gettapcolor() { return colBlue; }\nfunction setspherecolor() { colSphere = arrayfromargs(arguments); mgraphics.redraw(); } function getspherecolor() { return colSphere; }\nfunction setphsize(v) { playheadSize = v; mgraphics.redraw(); } function getphsize() { return playheadSize; }\nfunction setpvsize(v) { pivotSize = v; mgraphics.redraw(); } function getpvsize() { return pivotSize; }\n\n// =============================================================\n// PERSISTENCE PATTR (35 VALUES)\n// =============================================================\nfunction getvalueof() { \n    return [maxDelay, delIn, gravityIn, gravityOut, jitterValue, appMode, sphereX, sphereY, windowType, isReverse, fOn, fMix, fStart, fEnd, resVal, fDir, fType, mcMode, offsetVal, spreadVal, fbVal, mixVal, gainVal, playheadSize, pivotSize].concat(colBg).concat(colBlue).concat(colSphere); \n}\n\nfunction setvalueof() {\n    var v = arrayfromargs(arguments);\n    if (v.length >= 25) { \n        maxDelay = v[0]; delIn = v[1]; gravityIn = v[2]; gravityOut = v[3]; jitterValue = v[4]; appMode = v[5]; sphereX = v[6]; sphereY = v[7]; windowType = v[8]; isReverse = v[9]; fOn = v[10]; fMix = v[11]; fStart = v[12]; fEnd = v[13]; resVal = v[14]; fDir = v[15]; fType = v[16]; mcMode = v[17]; offsetVal = v[18]; spreadVal = v[19]; fbVal = v[20]; mixVal = v[21]; gainVal = v[22]; playheadSize = v[23]; pivotSize = v[24];\n    }\n    compute();\n}\n\n// =============================================================\n// MESSAGE HANDLERS (Fixed missing functions)\n// =============================================================\nfunction mix(v) { mixVal = v; notifyclients(); }\nfunction gain(v) { gainVal = v; notifyclients(); }\nfunction feedback(v) { fbVal = v; notifyclients(); }\nfunction resonance(v) { resVal = v; notifyclients(); }\nfunction res(v) { resVal = v; notifyclients(); }\nfunction f_on(v) { fOn = v; notifyclients(); }\nfunction f_mix(v) { fMix = v; notifyclients(); mgraphics.redraw(); }\nfunction f_start(v) { fStart = v; notifyclients(); }\nfunction f_end(v) { fEnd = v; notifyclients(); }\nfunction f_direction(v) { fDir = v; notifyclients(); }\nfunction f_type(v) { fType = v; notifyclients(); }\nfunction mc_mode(v) { mcMode = v; notifyclients(); mgraphics.redraw(); }\nfunction offset(v) { offsetVal = v; notifyclients(); }\nfunction spread(v) { spreadVal = v; notifyclients(); }\nfunction del_in(v) { delIn = Math.max(0, Math.min(0.8, v)); notifyclients(); compute(); }\nfunction max_delay(v) { maxDelay = Math.max(80, Math.min(30000, v)); notifyclients(); compute(); }\nfunction gravity_in(v) { gravityIn = v; notifyclients(); compute(); }\nfunction gravity_out(v) { gravityOut = v; notifyclients(); compute(); }\nfunction jitter(v) { jitterValue = v; notifyclients(); compute(); }\nfunction mode(v) { appMode = v; notifyclients(); compute(); }\nfunction window_type(v) { windowType = v; notifyclients(); compute(); }\nfunction reverse(v) { isReverse = v; notifyclients(); compute(); }\nfunction buffer(v) { bufName = v; compute(); }\nfunction restore() { compute(); dump(); }\nfunction panic() { var b = new Buffer(bufName); if (b.framecount() > 0) { for (var s = 0; s < 32; s++) b.poke(2, s, 0); } mgraphics.redraw(); }\nfunction dump() { outlet(1, \"max_delay\", maxDelay); outlet(1, \"gravity_in\", gravityIn); outlet(1, \"gravity_out\", gravityOut); outlet(1, \"jitter\", jitterValue); outlet(1, \"mode\", appMode); outlet(1, \"f_mix\", fMix); }\n\n// ANIMATION LOGIC\nfunction trigger() { var rY = 0.5 + (Math.random()*0.4); playheads.push({ startTime: Date.now(), pos: 0, yPos: rY }); if (playheads.length > 20) playheads.shift(); }\nfunction hit(v) { var idx = Math.floor(v); if (idx >= 0 && idx < 32) tapExcitations[idx] = 1.0; }\nfunction bang() {\n    var now = Date.now(), active = false;\n    for (var p = playheads.length - 1; p >= 0; p--) { playheads[p].pos = (now - playheads[p].startTime) / maxDelay; if (playheads[p].pos > 1.0) playheads.splice(p, 1); else active = true; }\n    var dF = 0.78 + (fbVal / 100) * 0.20;\n    for (var i = 0; i < 32; i++) { if (tapExcitations[i] > 0) { tapExcitations[i] *= dF; if (tapExcitations[i] < 0.01) tapExcitations[i] = 0; active = true; } }\n    if (active || isDragging) mgraphics.redraw();\n}\n\n// =============================================================\n// CORE CALCULATIONS\n// =============================================================\nfunction getExp(v) { return (v >= 0) ? 1.0 / (1.0 + (v / 50.0)) : 1.0 + (Math.abs(v) / 50.0); }\nfunction compute() {\n    var expIn = getExp(gravityIn), expOut = getExp(gravityOut), splitIndex = Math.floor(sphereX * 31);\n    var minT = maxDelay * delIn, span = maxDelay - minT;\n    for (var i = 0; i < 32; i++) {\n        var t;\n        if (appMode == 1) { if (i <= splitIndex) t = minT + Math.pow(i/Math.max(1, splitIndex), expIn) * (span*sphereX); else t = minT + (span*sphereX) + (Math.pow((i-splitIndex)/(31-splitIndex), expOut) * (span*(1.0-sphereX))); } else { t = minT + Math.pow(i / 31, expIn) * span; }\n        var jR = (jitterValue <= 0.3) ? (jitterValue/0.3)*0.05 : (jitterValue <= 0.6 ? 0.05+((jitterValue-0.3)/0.3)*0.15 : 0.2+((jitterValue-0.6)/0.4)*0.4);\n        tapValues[i] = Math.max(0.1, t + (Math.random()-0.5) * jR * maxDelay);\n        var dist = Math.abs((i / 31) - sphereX), width = Math.max(0.01, (1.0 - sphereY)), win = 1.0;\n        switch(parseInt(windowType)) {\n            case 0: win = Math.exp(-Math.pow(dist / (width * 0.6), 2)); break;\n            case 1: win = Math.cos(Math.min(Math.PI/2, dist / width)); break;\n            case 2: win = Math.max(0, 1.0 - (dist / width)); break;\n            case 3: win = Math.min(1.0, Math.max(0, 1.0 - (dist / width)) * 1.5); break;\n            case 4: win = Math.exp(-dist * (5.0 / width)); break;\n            case 5: win = (dist < width * 0.5) ? 1.0 : 0.0; break;\n            case 6: win = (i / 31); break;\n            case 7: win = 1.0 - (i / 31); break;\n            case 8: win = 1.0; break;\n        }\n        var a = (sphereY < 0.6) ? (win + (1.0 - win) * ((0.6 - sphereY) / 0.6)) : Math.pow(win, 1.0 + (sphereY - 0.6) * 5.0);\n        if (isReverse > 0) a = 1.0 - a;\n        if (i > 29) a *= (31 - i) / 2;\n        ampValues[i] = a;\n    }\n    var b = new Buffer(bufName); if (b.framecount() > 0) { for (var s = 0; s < 32; s++) { b.poke(1, s, tapValues[s]); b.poke(2, s, ampValues[s]); } }\n    mgraphics.redraw();\n}\n\nfunction paint() {\n    var w = box.rect[2] - box.rect[0], h = box.rect[3] - box.rect[1];\n    mgraphics.set_source_rgba(colBg); mgraphics.rectangle(0, 0, w, h); mgraphics.fill();\n    mgraphics.set_source_rgba(1, 1, 1, 0.03); mgraphics.rectangle(0, 0, delIn * w, h); mgraphics.fill();\n    var fR = fMix / 100;\n    var bR = colBlue[0] + fR * (colPink[0] - colBlue[0]), bG = colBlue[1] + fR * (colPink[1] - colBlue[1]), bB = colBlue[2] + fR * (colPink[2] - colBlue[2]);\n    for (var i = 0; i < 32; i++) {\n        var posX = (tapValues[i] / maxDelay) * w, barH = ampValues[i] * h * 0.85, exc = tapExcitations[i];\n        var r = bR + (exc * (1.0 - bR)), g = bG + (exc * (1.0 - bG)), b = bB + (exc * (1.0 - bB));\n        var pat = mgraphics.pattern_create_linear(posX, h - barH, posX, h);\n        pat.add_color_stop_rgba(0, r, g, b, 0.8 + (exc * 0.2)); pat.add_color_stop_rgba(1, 0, 0, 0, 0);\n        mgraphics.set_source(pat); mgraphics.set_line_width(2.2 + (exc * 4)); mgraphics.set_line_cap(\"round\");\n        mgraphics.move_to(posX, h); mgraphics.line_to(posX, h - barH); mgraphics.stroke();\n    }\n    var phRad = 2 + (playheadSize * 12);\n    for (var p = 0; p < playheads.length; p++) {\n        var px = playheads[p].pos * w, py = playheads[p].yPos * h;\n        mgraphics.set_source_rgba(1, 1, 1, 0.5); mgraphics.set_line_width(1.2);\n        mgraphics.ellipse(px - phRad, py - phRad, phRad * 2, phRad * 2); mgraphics.stroke();\n    }\n    var pvRad = 5 + (pivotSize * 20), sx = sphereX * w, sy = sphereY * h;\n    mgraphics.set_source_rgba(colSphere); mgraphics.set_line_width(1.5);\n    mgraphics.ellipse(sx - pvRad, sy - pvRad, pvRad * 2, pvRad * 2); mgraphics.stroke();\n}\n\nfunction onclick(x,y) { isDragging = true; ondrag(x,y); }\nfunction ondrag(x,y) { if (isDragging) { var w = box.rect[2]-box.rect[0], h = box.rect[3]-box.rect[1]; sphereX = Math.max(0.01, Math.min(0.99, x/w)); sphereY = Math.max(0.0, Math.min(1.0, y / h)); notifyclients(); compute(); } }\nfunction onrelease() { isDragging = false; }\nfunction loadbang() { compute(); }",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    },
                    "varname": "v8ui"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-70",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 347.0, 774.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 934.0, 586.0, 151.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 482.0, 551.0, 130.0, 130.0 ]
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 778.0, 474.0, 52.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "del-in",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "del-in",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "del-in"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.0, 487.0, 57.0, 22.0 ],
                    "text": "del_in $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 290.0, 60.74073874950409, 19.0 ],
                    "text": "saw down"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 270.0, 45.18518370389938, 19.0 ],
                    "text": "saw up"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 251.0, 44.07407262921333, 19.0 ],
                    "text": "square"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 231.0, 44.07407262921333, 19.0 ],
                    "text": "needle"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 211.0, 26.0, 19.0 ],
                    "text": "soft"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 192.0, 46.0, 19.0 ],
                    "text": "triangle"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 173.0, 42.222220838069916, 19.0 ],
                    "text": "cosine"
                }
            },
            {
                "box": {
                    "fontsize": 11.551384487659769,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 153.0, 50.0, 19.0 ],
                    "text": "hanning"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 82.0, 379.0, 58.0, 22.0 ],
                    "text": "s -to-jsui-",
                    "varname": "u431010580[2]"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 0.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 149.68152475357056, 55.0, 22.0 ],
                                    "text": "pipe 500"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 79.29936075210571, 135.0318443775177, 58.0, 22.0 ],
                                    "text": "s -to-jsui-",
                                    "varname": "u431010580[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 198.08916425704956, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 226.7515823841095, 51.0, 22.0 ],
                                    "text": "clear $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "restore", "panic", "int" ],
                                    "patching_rect": [ 50.0, 100.0, 105.0, 22.0 ],
                                    "text": "t 0 restore panic 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.99999358586126, 39.99999860380555, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.99999358586126, 308.75157060380553, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-19", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-19", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 240.0, 188.0, 45.0, 22.0 ],
                    "text": "p clear"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 812.0, 197.0, 901.0, 476.0 ],
                        "openinpresentation": 1,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 530.0, 160.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 530.0, 198.0, 102.0, 23.0 ],
                                    "text": "0, 0.05 10 0 150"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 759.0, 184.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 613.0, 277.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 613.0, 239.0, 179.0, 22.0 ],
                                    "text": "random 1000 @range 250 2000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 687.0, 198.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 686.0, 160.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 613.0, 348.0, 30.0, 22.0 ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 613.0, 383.0, 93.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 687.0, 323.0, 95.0, 23.0 ],
                                    "text": "0, 0.05 10 0 40"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 687.0, 348.0, 36.0, 23.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 613.0, 314.0, 66.0, 22.0 ],
                                    "text": "cycle~ 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 418.0, 254.0, 30.0, 22.0 ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 418.0, 289.0, 93.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 492.0, 229.0, 95.0, 23.0 ],
                                    "text": "0, 0.05 10 0 40"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 492.0, 254.0, 36.0, 23.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 418.0, 186.0, 70.0, 22.0 ],
                                    "text": "rand~ 6000"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-86",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 492.0, 160.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 153.0, 35.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 12.0, 47.0, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 14.0, 97.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 14.0, 123.0, 50.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 17.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 14.0, 67.0, 59.0, 22.0 ],
                                    "text": "random 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 14.0, 40.0, 69.0, 22.0 ],
                                    "text": "metro 4000"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 27.0,
                                    "data": {
                                        "clips": []
                                    },
                                    "id": "obj-91",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 186.0, 388.0, 84.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 12.0, 80.0, 875.0, 376.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 14.0, 5.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 109.0, 571.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.0, 571.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-112", 0 ],
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-112", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 1 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "order": 0,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "order": 1,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 1 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-91", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 32.0, 541.0, 393.34342399999997, 22.0 ],
                    "text": "p -sfplayer-hihat-"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 629.0, 835.0, 41.0, 22.0 ],
                    "text": "jitter 1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-114",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 621.0, 222.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 60 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "res",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "res",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "res"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 621.0, 292.0, 42.0, 22.0 ],
                    "text": "res $1"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 511.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-93",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 751.0, 222.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 100.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "fmix",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "fmix",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "fmix"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-101",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 337.0, 188.0, 77.5, 28.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "compmode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "compmode",
                            "parameter_type": 2
                        }
                    },
                    "text": "nocomp",
                    "texton": "comp",
                    "varname": "compmode"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-82",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 337.0, 255.0, 77.5, 28.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "mcmode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "mcmode",
                            "parameter_type": 2
                        }
                    },
                    "text": "stereo",
                    "texton": "multichannel",
                    "varname": "mcmode"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 281.0, 510.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 751.0, 292.0, 54.0, 22.0 ],
                    "text": "f_mix $1"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 845.0, 659.0, 39.0, 22.0 ],
                    "text": "/ 100."
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-47",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 201.0, 225.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "feedback",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "feedback",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "feedback"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 201.0, 292.0, 74.0, 22.0 ],
                    "text": "feedback $1"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-99",
                    "maxclass": "live.tab",
                    "num_lines_patching": 4,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 663.0, 178.0, 50.5, 105.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "down", "up", "rndm", "env" ],
                            "parameter_initial": [ 3.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "fdirection",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "fdirection",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "fdirection"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 663.0, 292.0, 81.0, 22.0 ],
                    "text": "f_direction $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-95",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 556.0, 222.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 12000 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "fmax",
                            "parameter_mmax": 18000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "fmax",
                            "parameter_speedlim": 1.666,
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "fmax"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 292.0, 55.0, 22.0 ],
                    "text": "f_end $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-90",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 495.0, 222.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 400 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "fmin",
                            "parameter_mmax": 18000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "fmin",
                            "parameter_speedlim": 1.666,
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "fmin"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 495.0, 292.0, 59.0, 22.0 ],
                    "text": "f_start $1"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 406.0, 510.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 292.0, 58.0, 22.0 ],
                    "text": "f_type $1"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-59",
                    "maxclass": "live.tab",
                    "num_lines_patching": 3,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 430.0, 178.0, 50.0, 105.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "lp", "bp", "hp" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ftype",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "ftype",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "ftype"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 1175.0, 228.0, 532.0, 491.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 69.0, 282.0, 172.0, 22.0 ],
                                    "text": "random 1000000 @range 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-9",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 69.0, 323.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 69.0, 253.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 69.0, 202.0, 42.0, 22.0 ],
                                    "text": "edge~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 291.0, 35.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 254.0, 35.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-113",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 254.0, 168.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 255.0, 198.0, 38.0, 22.0 ],
                                    "text": "hit $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 254.0, 133.0, 138.0, 22.0 ],
                                    "text": "snapshot~ 10 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 254.0, 97.0, 55.0, 22.0 ],
                                    "text": "sah~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 255.0, 240.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 69.0, 35.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-113", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 347.0, 716.0, 58.62068563699722, 49.0 ],
                    "text": "p -edge-sah-"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 387.0, 817.0, 58.0, 22.0 ],
                    "text": "s -to-jsui-",
                    "varname": "u431010580[7]"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 17.0, 379.0, 60.0, 22.0 ],
                    "text": "s -to-gen-",
                    "varname": "u431010580[6]"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 795.0, 96.0, 20.0 ],
                    "text": "elswhere"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 795.0, 93.0, 20.0 ],
                    "text": "pour bufgranul~"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 629.0, 1063.0, 60.0, 22.0 ],
                    "text": "s -to-gen-",
                    "varname": "u431010580[4]"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 577.0, 58.0, 22.0 ],
                    "text": "r -to-gen-",
                    "varname": "u431010580[3]"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 886.0, 716.0, 58.0, 22.0 ],
                    "text": "s -to-jsui-",
                    "varname": "u431010580[1]"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 774.0, 35.0, 22.0 ],
                    "text": "s trig"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 32.0, 652.0, 314.53428210526323, 22.0 ],
                    "text": "mc.pack~ 16 @chans 16"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-81",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 279.0, 225.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "offset",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "offset",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "offset"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 279.0, 292.0, 54.0, 22.0 ],
                    "text": "offset $1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 629.0, 810.0, 35.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 65.0, 903.0, 134.0, 22.0 ],
                    "text": "mc.dac~ 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "lastchannelcount": 6,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 34.0, 717.0, 73.0, 165.0 ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 337.0, 292.0, 78.0, 22.0 ],
                    "text": "mc_mode $1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-78",
                    "maxclass": "meter~",
                    "monotone": 1,
                    "numinlets": 1,
                    "numleds": 20,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 131.0, 714.0, 90.0, 168.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 32.0, 689.0, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 6"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 121.0, 265.0, 268.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 69.0, 76.0, 40.0, 22.0 ],
                                    "text": "-~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 126.0, 124.0, 36.0, 22.0 ],
                                    "text": ">~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 126.0, 152.0, 42.0, 22.0 ],
                                    "text": "edge~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.0, 199.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 68.0, 199.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 69.0, 35.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "order": 0,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 412.0, 716.0, 123.0, 22.0 ],
                    "text": "p -edge-"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 516.0, 740.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-74",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 779.0, 376.0, 105.16128718852997, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "simple", "mirror" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "mirror",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "mirror",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "mirror"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 862.0, 351.0, 22.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "reverse",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "reverse",
                            "parameter_type": 2
                        }
                    },
                    "varname": "reverse"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 351.0, 65.0, 22.0 ],
                    "text": "reverse $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.7176470588235294, 0.7019607843137254, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 12.0,
                    "id": "obj-56",
                    "maxclass": "live.tab",
                    "num_lines_patching": 8,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 886.0, 152.0, 47.77069687843323, 156.59871363639832 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "1", "2", "3", "4", "5", "6", "7", "8" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 7,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 321.0, 95.0, 22.0 ],
                    "text": "window_type $1"
                }
            },
            {
                "box": {
                    "attr": "bg_color",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 629.0, 786.0, 224.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 687.0, 835.0, 96.0, 22.0 ],
                    "restore": [ 5000, 0, -70, 34, 0, 0, 0.32808398950131235, 0.39779005524861877, 0, 0, 1, 100, 541.4173228346446, 12000, 0.1, 3, 1, 0, 0, 0, 58, 0.6535433070866148, 5, 0.1, 0.1, 0.01, 0.01, 0.015, 1, 0, 0.7, 0.9, 0.8, 1, 1, 1, 0.5 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr ma_sphere",
                    "varname": "ma_sphere"
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.47058823529411764, 0.0, 1.0 ],
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 668.0, 68.0, 22.0 ],
                    "text": "send~ amp"
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.47058823529411764, 0.0, 1.0 ],
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 774.0, 62.0, 22.0 ],
                    "text": "send~ trig"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 431.0, 53.0, 22.0 ],
                    "text": "clearlow"
                }
            },
            {
                "box": {
                    "attr": "res",
                    "id": "obj-63",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 109.0, 577.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 626.0, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 240.0, 162.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 779.0, 588.0, 52.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "gravity_out",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gravity_out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "gravity_out"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 601.0, 84.0, 22.0 ],
                    "text": "gravity_out $1"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 376.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 17.0, 124.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 779.0, 642.0, 51.854875326156616, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "jitter",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "jitter",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "jitter"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 659.0, 48.0, 22.0 ],
                    "text": "jitter $1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 337.0, 225.0, 67.0, 22.0 ],
                    "text": "ducking $1"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 17.0, 151.0, 67.0, 22.0 ],
                    "text": "---buf_taps"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-52",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 137.0, 225.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 100.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "spread",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "spread",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "spread"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 137.0, 292.0, 62.0, 22.0 ],
                    "text": "spread $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-41",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 82.0, 225.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 3.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "gain",
                            "parameter_mmax": 5.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "gain"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 292.0, 48.0, 22.0 ],
                    "text": "gain $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-36",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 33.0, 225.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "mix",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "mix"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 1.0, 1.0 ],
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 223.0, 431.0, 232.0, 22.0 ],
                    "text": "buffer~ ---buf_taps @samps 32 @chans 2"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 156.0, 510.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 33.0, 292.0, 44.0, 22.0 ],
                    "text": "mix $1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 20,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 32.0, 617.0, 393.34342399999997, 22.0 ],
                    "text": "gen~ @gen delays-delays",
                    "varname": "mon_gen"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 779.0, 415.0, 51.854875326156616, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 5000 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "del-time",
                            "parameter_mmax": 30000.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "del-time",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "del-time"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-67",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 779.0, 533.0, 51.854875326156616, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "gravity_in",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gravity_in",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "gravity_in"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 546.0, 77.0, 22.0 ],
                    "text": "gravity_in $1"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 886.0, 441.0, 83.0, 22.0 ],
                    "text": "max_delay $1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 227.4484555721283, 717.0, 70.10308885574341, 70.10308885574341 ],
                    "prototypename": "helpfile",
                    "varname": "autohelp_dac"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 865.0, 819.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 865.0, 786.0, 119.0, 22.0 ],
                    "text": "qmetro 33 @active 1"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 907.0, 820.0, 56.0, 22.0 ],
                    "text": "r -to-jsui-",
                    "varname": "u431010580[5]"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "hidden": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 2 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 760.5, 325.9836779125035, 91.5, 325.9836779125035 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 760.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 630.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 346.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 249.5, 212.43530461378396, 26.5, 212.43530461378396 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 42.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 42.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "hidden": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 15 ],
                    "source": [ "obj-3", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 14 ],
                    "source": [ "obj-3", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 13 ],
                    "source": [ "obj-3", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 12 ],
                    "source": [ "obj-3", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 11 ],
                    "source": [ "obj-3", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 10 ],
                    "source": [ "obj-3", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 9 ],
                    "source": [ "obj-3", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 8 ],
                    "source": [ "obj-3", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 7 ],
                    "source": [ "obj-3", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 6 ],
                    "source": [ "obj-3", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 5 ],
                    "source": [ "obj-3", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 4 ],
                    "source": [ "obj-3", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 3 ],
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-3", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 2 ],
                    "source": [ "obj-3", 18 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "order": 2,
                    "source": [ "obj-3", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-3", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 376.43885305263154, 697.9112390642986, 421.5, 697.9112390642986 ],
                    "order": 1,
                    "source": [ "obj-3", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-3", 19 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 41.5, 681.9407410621643, 140.5, 681.9407410621643 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 91.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 91.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 146.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-54", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "order": 1,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "order": 0,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "hidden": 1,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.3725490196, 0.3725490196, 0.3725490196, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "hidden": 1,
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 439.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 439.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "hidden": 1,
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "order": 0,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 346.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 288.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 3 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 504.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 504.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 565.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 565.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 210.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 210.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.9769930243492126, 0.0, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 672.5, 325.07323813438416, 91.5, 325.07323813438416 ],
                    "order": 0,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 672.5, 357.9407410621643, 26.5, 357.9407410621643 ],
                    "order": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "del-time", "del-time", 0 ],
            "obj-101": [ "compmode", "compmode", 0 ],
            "obj-114": [ "res", "res", 0 ],
            "obj-20": [ "jitter", "jitter", 0 ],
            "obj-27": [ "del-in", "del-in", 0 ],
            "obj-32": [ "gravity_out", "gravity_out", 0 ],
            "obj-36": [ "mix", "mix", 0 ],
            "obj-41": [ "gain", "gain", 0 ],
            "obj-47": [ "feedback", "feedback", 0 ],
            "obj-52": [ "spread", "spread", 0 ],
            "obj-56": [ "live.tab", "live.tab", 0 ],
            "obj-59": [ "ftype", "ftype", 0 ],
            "obj-67": [ "gravity_in", "gravity_in", 0 ],
            "obj-72": [ "reverse", "reverse", 0 ],
            "obj-74": [ "mirror", "mirror", 0 ],
            "obj-81": [ "offset", "offset", 0 ],
            "obj-82": [ "mcmode", "mcmode", 0 ],
            "obj-83": [ "mc.live.gain~", "mc.live.gain~", 0 ],
            "obj-90": [ "fmin", "fmin", 0 ],
            "obj-93": [ "fmix", "fmix", 0 ],
            "obj-95": [ "fmax", "fmax", 0 ],
            "obj-99": [ "fdirection", "fdirection", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ]
    }
}