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
                    "attr": "mix_pct",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 336.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "gainout",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 312.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "speed_khz",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 288.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "remanence",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 264.0, 150.0, 22.0 ]
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
                    "patching_rect": [ 214.0, 240.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "coercivity",
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 216.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "bias",
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 192.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 62.0, 418.0, 27.0 ],
                    "text": "Physical model of magnetic domain tape hysteresis",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 9.0, 253.0, 47.0 ],
                    "text": "Tape Hysterisis",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 82.0, 464.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-2", "playlist~", "preset_count", 2, 7, "obj-2", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-2", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-2", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-2", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-2", "playlist~", "preset_execute", 5, "obj-5", "attrui", "attr", "bias", 5, "obj-5", "attrui", "float", 40.0, 5, "obj-6", "attrui", "attr", "coercivity", 5, "obj-6", "attrui", "float", 0.4, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 60.0, 5, "obj-7", "attrui", "attr", "remanence", 5, "obj-7", "attrui", "float", 0.6, 5, "obj-9", "attrui", "attr", "speed_khz", 5, "obj-9", "attrui", "float", 5.0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", -6.0, 5, "obj-12", "attrui", "attr", "mix_pct", 5, "obj-12", "attrui", "float", 55.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-2", "playlist~", "preset_count", 2, 7, "obj-2", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-2", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-2", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-2", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-2", "playlist~", "preset_execute", 5, "obj-5", "attrui", "attr", "bias", 5, "obj-5", "attrui", "float", 70.0, 5, "obj-6", "attrui", "attr", "coercivity", 5, "obj-6", "attrui", "float", 0.4, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 20.0, 5, "obj-7", "attrui", "attr", "remanence", 5, "obj-7", "attrui", "float", 0.8, 5, "obj-9", "attrui", "attr", "speed_khz", 5, "obj-9", "attrui", "float", 16.0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", 0.0, 5, "obj-12", "attrui", "attr", "mix_pct", 5, "obj-12", "attrui", "float", 55.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-2", "playlist~", "preset_count", 2, 7, "obj-2", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-2", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 1, "id", "u764007122", 7, "obj-2", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-2", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-2", "playlist~", "preset_clipstate", 2, "absolutepath", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "filename", "FemVoice.aif", 7, "obj-2", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-2", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-2", "playlist~", "preset_clipstate", 2, "id", "u571007144", 7, "obj-2", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-2", "playlist~", "preset_execute", 5, "obj-5", "attrui", "attr", "bias", 5, "obj-5", "attrui", "float", 5.0, 5, "obj-6", "attrui", "attr", "coercivity", 5, "obj-6", "attrui", "float", 0.4, 5, "obj-8", "attrui", "attr", "drive", 5, "obj-8", "attrui", "float", 100.0, 5, "obj-7", "attrui", "attr", "remanence", 5, "obj-7", "attrui", "float", 0.8, 5, "obj-9", "attrui", "attr", "speed_khz", 5, "obj-9", "attrui", "float", 5.0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", -6.0, 5, "obj-12", "attrui", "attr", "mix_pct", 5, "obj-12", "attrui", "float", 55.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 431.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 96.0, 35.0, 22.0 ],
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
                    "id": "obj-2",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 128.0, 334.0, 59.0 ],
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
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 538.0, 45.0, 45.0 ]
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
                    "patching_rect": [ 30.0, 368.0, 48.0, 136.0 ],
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
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 30.0, 336.0, 156.0, 22.0 ],
                    "text": "gen~ @gen tape-hysteresis"
                }
            }
        ],
        "lines": [
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
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
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
                    "destination": [ "obj-gen", 0 ],
                    "hidden": 1,
                    "source": [ "obj-7", 0 ]
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