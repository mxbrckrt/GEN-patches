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
        "openrect": [ 50.0, 50.0, 600.0, 600.0 ],
        "openrectmode": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 477.0, 410.0, 99.0, 20.0 ],
                    "presentation_linecount": 2,
                    "text": "continuous noise"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.0, 315.0, 69.0, 20.0 ],
                    "text": "noise pulse"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 328.64869689941406, 38.0, 22.0 ],
                                    "text": "pink~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 362.64869689941406, 67.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 238.14869689941406, 48.0, 22.0 ],
                                    "text": "pipe 40"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 98.0, 266.64869689941406, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "", "" ],
                                    "patching_rect": [ 98.0, 300.64869689941406, 99.0, 22.0 ],
                                    "text": "adsr~ 0 100 1 40"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 98.0, 194.64869689941406, 40.0, 22.0 ],
                                    "text": "t 0 1 i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 137.64869689941406, 110.0, 35.0 ],
                                    "text": "random 1000 @range 100 4000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 98.0, 107.64869689941406, 63.0, 22.0 ],
                                    "text": "metro 500"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 98.0, 39.999999899414064, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 444.64869689941406, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-17", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 450.0, 376.0, 19.0, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "attr": "mix_pct",
                    "id": "obj-18",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 308.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "h_pick_ph2",
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 277.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 110.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "clipheight": 28.5,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "drumLoop.aif",
                                "filename": "drumLoop.aif",
                                "filekind": "audiofile",
                                "id": "u764007122",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u571007144",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-8",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 101.0, 334.0, 59.0 ],
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
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 219.0, 409.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 219.0, 439.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-mix", "attrui", "attr", "h_pick_ph1", 5, "obj-mix", "attrui", "float", 0.7, 5, "obj-attrui", "attrui", "attr", "freq", 5, "obj-attrui", "attrui", "float", 110.0, 5, "obj-4", "toggle", "int", 0, 5, "obj-1", "attrui", "attr", "detune", 5, "obj-1", "attrui", "float", 40.0, 5, "obj-3", "attrui", "attr", "decay_time", 5, "obj-3", "attrui", "float", 20.0, 5, "obj-5", "attrui", "attr", "damping", 5, "obj-5", "attrui", "float", 0.3, 5, "obj-6", "attrui", "attr", "stiffness", 5, "obj-6", "attrui", "float", 0.15, 5, "obj-11", "attrui", "attr", "pick_pos", 5, "obj-11", "attrui", "float", 0.22, 5, "obj-10", "attrui", "attr", "strike_res", 5, "obj-10", "attrui", "float", 0.9000000000000001, 5, "obj-9", "attrui", "attr", "nl_bridge", 5, "obj-9", "attrui", "float", 0.25, 5, "obj-19", "toggle", "int", 1, 5, "obj-8", "playlist~", "preset_count", 2, 7, "obj-8", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-8", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-8", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-8", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-8", "playlist~", "preset_execute", 5, "obj-13", "attrui", "attr", "h_pick_ph2", 5, "obj-13", "attrui", "float", 10.0, 5, "obj-18", "attrui", "attr", "mix_pct", 5, "obj-18", "attrui", "float", 100.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-mix", "attrui", "attr", "h_pick_ph1", 5, "obj-mix", "attrui", "float", 0.7, 5, "obj-attrui", "attrui", "attr", "freq", 5, "obj-attrui", "attrui", "float", 110.0, 5, "obj-4", "toggle", "int", 0, 5, "obj-1", "attrui", "attr", "detune", 5, "obj-1", "attrui", "float", 5.0, 5, "obj-3", "attrui", "attr", "decay_time", 5, "obj-3", "attrui", "float", 9.0, 5, "obj-5", "attrui", "attr", "damping", 5, "obj-5", "attrui", "float", 0.6500000000000001, 5, "obj-6", "attrui", "attr", "stiffness", 5, "obj-6", "attrui", "float", 0.15, 5, "obj-11", "attrui", "attr", "pick_pos", 5, "obj-11", "attrui", "float", 0.22, 5, "obj-10", "attrui", "attr", "strike_res", 5, "obj-10", "attrui", "float", 0.5, 5, "obj-9", "attrui", "attr", "nl_bridge", 5, "obj-9", "attrui", "float", 0.25, 5, "obj-19", "toggle", "int", 1, 5, "obj-8", "playlist~", "preset_count", 2, 7, "obj-8", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-8", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-8", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-8", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-8", "playlist~", "preset_execute", 5, "obj-13", "attrui", "attr", "h_pick_ph2", 5, "obj-13", "attrui", "float", 10.0, 5, "obj-18", "attrui", "attr", "mix_pct", 5, "obj-18", "attrui", "float", 100.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-mix", "attrui", "attr", "h_pick_ph1", 5, "obj-mix", "attrui", "float", 0.7, 5, "obj-attrui", "attrui", "attr", "freq", 5, "obj-attrui", "attrui", "float", 450.0, 5, "obj-4", "toggle", "int", 0, 5, "obj-1", "attrui", "attr", "detune", 5, "obj-1", "attrui", "float", 20.0, 5, "obj-3", "attrui", "attr", "decay_time", 5, "obj-3", "attrui", "float", 9.0, 5, "obj-5", "attrui", "attr", "damping", 5, "obj-5", "attrui", "float", 0.8, 5, "obj-6", "attrui", "attr", "stiffness", 5, "obj-6", "attrui", "float", 0.06000000000000001, 5, "obj-11", "attrui", "attr", "pick_pos", 5, "obj-11", "attrui", "float", 0.6000000000000001, 5, "obj-10", "attrui", "attr", "strike_res", 5, "obj-10", "attrui", "float", 0.5, 5, "obj-9", "attrui", "attr", "nl_bridge", 5, "obj-9", "attrui", "float", 0.25, 5, "obj-19", "toggle", "int", 0, 5, "obj-8", "playlist~", "preset_count", 2, 7, "obj-8", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-8", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-8", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-8", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-8", "playlist~", "preset_execute", 5, "obj-13", "attrui", "attr", "h_pick_ph2", 5, "obj-13", "attrui", "float", 10.0, 5, "obj-18", "attrui", "attr", "mix_pct", 5, "obj-18", "attrui", "float", 100.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-mix", "attrui", "attr", "h_pick_ph1", 5, "obj-mix", "attrui", "float", 0.7, 5, "obj-attrui", "attrui", "attr", "freq", 5, "obj-attrui", "attrui", "float", 20.0, 5, "obj-4", "toggle", "int", 0, 5, "obj-1", "attrui", "attr", "detune", 5, "obj-1", "attrui", "float", 45.0, 5, "obj-3", "attrui", "attr", "decay_time", 5, "obj-3", "attrui", "float", 6.0, 5, "obj-5", "attrui", "attr", "damping", 5, "obj-5", "attrui", "float", 0.45000000000000007, 5, "obj-6", "attrui", "attr", "stiffness", 5, "obj-6", "attrui", "float", 0.06000000000000001, 5, "obj-11", "attrui", "attr", "pick_pos", 5, "obj-11", "attrui", "float", 0.6000000000000001, 5, "obj-10", "attrui", "attr", "strike_res", 5, "obj-10", "attrui", "float", 0.5, 5, "obj-9", "attrui", "attr", "nl_bridge", 5, "obj-9", "attrui", "float", 0.25, 5, "obj-19", "toggle", "int", 0, 5, "obj-8", "playlist~", "preset_count", 2, 7, "obj-8", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-8", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-8", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-8", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-8", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-8", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-8", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-8", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-8", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-8", "playlist~", "preset_execute", 5, "obj-13", "attrui", "attr", "h_pick_ph2", 5, "obj-13", "attrui", "float", 10.0, 5, "obj-18", "attrui", "attr", "mix_pct", 5, "obj-18", "attrui", "float", 100.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 450.0, 341.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "attr": "nl_bridge",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 225.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "strike_res",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 199.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "pick_pos",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 173.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "stiffness",
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 277.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 251.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "decay_time",
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 225.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "detune",
                    "id": "obj-1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 199.0, 142.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 447.5, 408.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 447.5, 443.0, 42.0, 22.0 ],
                    "text": "trig $1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 36.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.0, 13.0, 479.0, 47.0 ],
                    "text": "Non-Linear Waveguide String"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 16.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 62.0, 225.0, 24.0 ],
                    "text": "not your regular karplus strong"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 543.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 64.0, 373.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 64.0, 329.0, 138.0, 35.0 ],
                    "text": "gen~ @gen waveguide-string"
                }
            },
            {
                "box": {
                    "attr": "freq",
                    "id": "obj-attrui",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 173.0, 142.0, 22.0 ],
                    "text_width": 85.0
                }
            },
            {
                "box": {
                    "attr": "h_pick_ph1",
                    "id": "obj-mix",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 251.0, 142.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
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
                    "destination": [ "obj-gen", 1 ],
                    "hidden": 1,
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-attrui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "source": [ "obj-gen", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-mix", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "live.gain~", "live.gain~", 0 ],
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
        "autosave": 0
    }
}