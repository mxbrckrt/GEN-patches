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
        "rect": [ 134.0, 174.0, 520.0, 640.0 ],
        "default_fontname": "Lato",
        "boxes": [
            {
                "box": {
                    "clipheight": 40.64150943396232,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u210012308",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "tabla-solo.wav",
                                "filename": "tabla-solo.wav",
                                "filekind": "audiofile",
                                "id": "u496005161",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-20",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 183.0, 232.0754716981132, 83.28301886792464 ],
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
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 142.0, 35.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 32.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 15.0, 185.0, 45.0 ],
                    "text": "Model Drive"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 60.0, 410.0, 38.0 ],
                    "text": "Morphing multi-model distortion engine with loudness normalization\n(Tanh Overdrive -> Wavefolder -> Quantizer Bitcrush -> Modulo Wrap)"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 50.0, 342.0, 165.0, 23.0 ],
                    "text": "gen~ @gen modeldrive",
                    "varname": "modeldrive"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 50.0, 385.0, 48.0, 136.0 ],
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
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 548.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 403.0, 70.0, 23.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 120.0, 441.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-12", "attrui", "attr", "mix", 5, "obj-12", "attrui", "float", 100.0, 5, "obj-11", "attrui", "attr", "gain", 5, "obj-11", "attrui", "float", 0.0, 5, "obj-10", "attrui", "attr", "level_comp", 5, "obj-10", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "tone", 5, "obj-9", "attrui", "float", 500.0, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 100.0, 5, "obj-7", "attrui", "attr", "model", 5, "obj-7", "attrui", "float", 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-12", "attrui", "attr", "mix", 5, "obj-12", "attrui", "float", 50.0, 5, "obj-11", "attrui", "attr", "gain", 5, "obj-11", "attrui", "float", 0.0, 5, "obj-10", "attrui", "attr", "level_comp", 5, "obj-10", "attrui", "float", 0.8000000000000002, 5, "obj-9", "attrui", "attr", "tone", 5, "obj-9", "attrui", "float", 2000.0, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 30.0, 5, "obj-7", "attrui", "attr", "model", 5, "obj-7", "attrui", "float", 33.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-12", "attrui", "attr", "mix", 5, "obj-12", "attrui", "float", 75.0, 5, "obj-11", "attrui", "attr", "gain", 5, "obj-11", "attrui", "float", 9.0, 5, "obj-10", "attrui", "attr", "level_comp", 5, "obj-10", "attrui", "float", 0.4000000000000001, 5, "obj-9", "attrui", "attr", "tone", 5, "obj-9", "attrui", "float", 6000.0, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 30.0, 5, "obj-7", "attrui", "attr", "model", 5, "obj-7", "attrui", "float", 65.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-12", "attrui", "attr", "mix", 5, "obj-12", "attrui", "float", 75.0, 5, "obj-11", "attrui", "attr", "gain", 5, "obj-11", "attrui", "float", 0.0, 5, "obj-10", "attrui", "attr", "level_comp", 5, "obj-10", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "tone", 5, "obj-9", "attrui", "float", 6000.0, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 75.0, 5, "obj-7", "attrui", "attr", "model", 5, "obj-7", "attrui", "float", 100.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "model",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 183.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 218.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "tone",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 253.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "level_comp",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 288.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 323.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 274.0, 358.0, 195.0, 23.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-3": [ "live.gain~", "live.gain~", 0 ],
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