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
        "rect": [ 34.0, 102.0, 1076.0, 880.0 ],
        "boxes": [
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u938001510",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-2",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 55.99999999999999, 182.66666666666666, 150.0, 30.0 ],
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
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 652.6666666666666, 257.3333333333333, 84.0, 21.0 ],
                    "text": "s -to-visualizer-"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 13.333333333333334, 650.0, 33.0 ],
                    "text": "3D Distance-Based Amplitude Panning (DBAP & KNN)"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 46.666666666666664, 680.0, 21.0 ],
                    "text": "Dynamic CSV Layouts (maxBstudio 6ch / Grame 28ch Dome) • Continuous 32-Channel Spatial Engine"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-audio",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 61.0, 122.66666666666669, 140.0, 20.0 ],
                    "text": "── 1. Audio Source ──"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-traj",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 276.0, 122.66666666666667, 199.0, 20.0 ],
                    "text": "── 2. 3D Trajectory Generator ──"
                }
            },
            {
                "box": {
                    "id": "obj-chaos",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 281.0, 226.0, 185.0, 22.0 ],
                    "text": "gen~ @gen lorenz-rossler-chaos"
                }
            },
            {
                "box": {
                    "attr": "speed",
                    "id": "obj-chaos-speed",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 281.0, 146.0, 140.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "system",
                    "id": "obj-chaos-sys",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 281.0, 174.0, 140.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-js-loader",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 499.6666666666667, 226.0, 140.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dbap_csv_loader.js",
                        "parameter_enable": 0
                    },
                    "text": "js dbap_csv_loader.js"
                }
            },
            {
                "box": {
                    "id": "obj-buf-pos",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 419.3333333333333, 440.6666666666667, 121.0, 22.0 ],
                    "text": "buffer~ spk_pos 10 3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-layout-info",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 498.3333333333333, 257.3333333333333, 143.0, 19.0 ],
                    "text": "Active Layout: None loaded"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-dbap",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 376.0, 300.0, 20.0 ],
                    "text": "── 4. 3D DBAP Spatial Engine (32 Outlets) ──"
                }
            },
            {
                "box": {
                    "attr": "rolloff",
                    "id": "obj-att-roll",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 56.0, 400.6666666666667, 130.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "blur",
                    "id": "obj-att-blur",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 196.0, 400.6666666666667, 130.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "focus",
                    "id": "obj-att-focus",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 336.0, 400.6666666666667, 130.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "room_scale",
                    "id": "obj-att-room",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 476.0, 400.6666666666667, 140.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-gen-dbap",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 32,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 56.0, 440.6666666666667, 356.6666666666667, 22.0 ],
                    "text": "gen~ @gen spatial-dbap"
                }
            },
            {
                "box": {
                    "id": "obj-mc-combine",
                    "maxclass": "newobj",
                    "numinlets": 32,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 56.0, 516.0, 356.6666666666667, 22.0 ],
                    "text": "mc.combine~ 32"
                }
            },
            {
                "box": {
                    "id": "obj-mc-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 56.0, 556.0, 115.33333333333333, 240.66666666666666 ]
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 203.33333333333334, 710.6666666666666, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-mcdac",
                    "linecount": 5,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 176.66666666666666, 560.0, 138.0, 76.0 ],
                    "text": "mc.dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-x",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 728.6666666666666, 193.33333333333334, 81.0, 22.0 ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-y",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 804.6666666666666, 193.33333333333334, 81.0, 22.0 ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-z",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 880.6666666666665, 193.33333333333337, 81.0, 22.0 ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-pak-xyz",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 652.6666666666666, 226.0, 246.99999999999994, 22.0 ],
                    "text": "pak /adm/obj/1/xyz 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-drop",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 499.6666666666667, 122.66666666666667, 130.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-drop-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 504.33333333333337, 137.33333333333334, 120.0, 18.0 ],
                    "text": "Drag & Drop CSV Layout"
                }
            },
            {
                "box": {
                    "id": "obj-msg-read",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 499.6666666666667, 195.33333333333334, 80.0, 22.0 ],
                    "text": "prepend read"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-att-blur", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-att-focus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-att-roll", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-att-room", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 3 ],
                    "order": 1,
                    "source": [ "obj-chaos", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 2 ],
                    "order": 1,
                    "source": [ "obj-chaos", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 1 ],
                    "order": 1,
                    "source": [ "obj-chaos", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-snapshot-x", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-chaos", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-snapshot-y", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-chaos", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-snapshot-z", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-chaos", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-chaos", 0 ],
                    "source": [ "obj-chaos-speed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-chaos", 0 ],
                    "source": [ "obj-chaos-sys", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-read", 0 ],
                    "source": [ "obj-drop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 31 ],
                    "source": [ "obj-gen-dbap", 31 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 30 ],
                    "source": [ "obj-gen-dbap", 30 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 29 ],
                    "source": [ "obj-gen-dbap", 29 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 28 ],
                    "source": [ "obj-gen-dbap", 28 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 27 ],
                    "source": [ "obj-gen-dbap", 27 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 26 ],
                    "source": [ "obj-gen-dbap", 26 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 25 ],
                    "source": [ "obj-gen-dbap", 25 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 24 ],
                    "source": [ "obj-gen-dbap", 24 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 23 ],
                    "source": [ "obj-gen-dbap", 23 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 22 ],
                    "source": [ "obj-gen-dbap", 22 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 21 ],
                    "source": [ "obj-gen-dbap", 21 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 20 ],
                    "source": [ "obj-gen-dbap", 20 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 19 ],
                    "source": [ "obj-gen-dbap", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 18 ],
                    "source": [ "obj-gen-dbap", 18 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 17 ],
                    "source": [ "obj-gen-dbap", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 16 ],
                    "source": [ "obj-gen-dbap", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 15 ],
                    "source": [ "obj-gen-dbap", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 14 ],
                    "source": [ "obj-gen-dbap", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 13 ],
                    "source": [ "obj-gen-dbap", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 12 ],
                    "source": [ "obj-gen-dbap", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 11 ],
                    "source": [ "obj-gen-dbap", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 10 ],
                    "source": [ "obj-gen-dbap", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 9 ],
                    "source": [ "obj-gen-dbap", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 8 ],
                    "source": [ "obj-gen-dbap", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 7 ],
                    "source": [ "obj-gen-dbap", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 6 ],
                    "source": [ "obj-gen-dbap", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 5 ],
                    "source": [ "obj-gen-dbap", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 4 ],
                    "source": [ "obj-gen-dbap", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 3 ],
                    "source": [ "obj-gen-dbap", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 2 ],
                    "source": [ "obj-gen-dbap", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 1 ],
                    "source": [ "obj-gen-dbap", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-combine", 0 ],
                    "source": [ "obj-gen-dbap", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-js-loader", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen-dbap", 0 ],
                    "source": [ "obj-js-loader", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mc-meter", 0 ],
                    "order": 1,
                    "source": [ "obj-mc-combine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mcdac", 0 ],
                    "order": 0,
                    "source": [ "obj-mc-combine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js-loader", 0 ],
                    "source": [ "obj-msg-read", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-pak-xyz", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pak-xyz", 1 ],
                    "source": [ "obj-snapshot-x", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pak-xyz", 2 ],
                    "source": [ "obj-snapshot-y", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pak-xyz", 3 ],
                    "source": [ "obj-snapshot-z", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}