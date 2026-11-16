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
        "rect": [ 134.0, 174.0, 720.0, 560.0 ],
        "default_fontname": "Lato",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 30.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 15.0, 260.0, 42.0 ],
                    "text": "Filterbank-8"
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
                    "patching_rect": [ 32.0, 58.0, 465.0, 38.0 ],
                    "text": "8-Band analog-modeled resonant filterbank with non-linear feedback saturation.\nLimit-cycle singing ringing, global pitch transposition, drive & spatial spread."
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 125.0, 35.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "clipheight": 84.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "drumLoop.aif",
                                "filename": "drumLoop.aif",
                                "filekind": "audiofile",
                                "id": "u164007787",
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
                    "patching_rect": [ 32.0, 155.0, 230.0, 85.0 ],
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
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 32.0, 275.0, 185.0, 23.0 ],
                    "text": "gen~ @gen filterbank-8",
                    "varname": "filterbank_8"
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
                    "patching_rect": [ 32.0, 320.0, 48.0, 136.0 ],
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
                    "patching_rect": [ 32.0, 480.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 95.0, 335.0, 70.0, 23.0 ],
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
                    "patching_rect": [ 95.0, 370.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-38", "attrui", "attr", "gain_8", 5, "obj-38", "attrui", "float", 0.0, 5, "obj-37", "attrui", "attr", "gain_7", 5, "obj-37", "attrui", "float", 0.0, 5, "obj-36", "attrui", "attr", "gain_6", 5, "obj-36", "attrui", "float", 12.0, 5, "obj-35", "attrui", "attr", "gain_5", 5, "obj-35", "attrui", "float", -48.0, 5, "obj-34", "attrui", "attr", "gain_4", 5, "obj-34", "attrui", "float", 12.0, 5, "obj-33", "attrui", "attr", "gain_3", 5, "obj-33", "attrui", "float", -48.0, 5, "obj-32", "attrui", "attr", "gain_2", 5, "obj-32", "attrui", "float", -48.0, 5, "obj-31", "attrui", "attr", "gain_1", 5, "obj-31", "attrui", "float", 5.0, 5, "obj-27", "attrui", "attr", "mix", 5, "obj-27", "attrui", "float", 100.0, 5, "obj-26", "attrui", "attr", "gain", 5, "obj-26", "attrui", "float", -5.0, 5, "obj-25", "attrui", "attr", "stereo_spread", 5, "obj-25", "attrui", "float", 100.0, 5, "obj-24", "attrui", "attr", "soft_clip", 5, "obj-24", "attrui", "float", 100.0, 5, "obj-23", "attrui", "attr", "drive", 5, "obj-23", "attrui", "float", 0.0, 5, "obj-22", "attrui", "attr", "q_global", 5, "obj-22", "attrui", "float", 50.0, 5, "obj-21", "attrui", "attr", "freq_shift", 5, "obj-21", "attrui", "float", 8.0, 5, "obj-20", "playlist~", "preset_count", 1, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u164007787", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-38", "attrui", "attr", "gain_8", 5, "obj-38", "attrui", "float", 0.0, 5, "obj-37", "attrui", "attr", "gain_7", 5, "obj-37", "attrui", "float", 12.0, 5, "obj-36", "attrui", "attr", "gain_6", 5, "obj-36", "attrui", "float", -48.0, 5, "obj-35", "attrui", "attr", "gain_5", 5, "obj-35", "attrui", "float", 12.0, 5, "obj-34", "attrui", "attr", "gain_4", 5, "obj-34", "attrui", "float", 12.0, 5, "obj-33", "attrui", "attr", "gain_3", 5, "obj-33", "attrui", "float", -48.0, 5, "obj-32", "attrui", "attr", "gain_2", 5, "obj-32", "attrui", "float", 12.0, 5, "obj-31", "attrui", "attr", "gain_1", 5, "obj-31", "attrui", "float", -48.0, 5, "obj-27", "attrui", "attr", "mix", 5, "obj-27", "attrui", "float", 48.0, 5, "obj-26", "attrui", "attr", "gain", 5, "obj-26", "attrui", "float", -5.0, 5, "obj-25", "attrui", "attr", "stereo_spread", 5, "obj-25", "attrui", "float", 0.0, 5, "obj-24", "attrui", "attr", "soft_clip", 5, "obj-24", "attrui", "float", 0.0, 5, "obj-23", "attrui", "attr", "drive", 5, "obj-23", "attrui", "float", 0.0, 5, "obj-22", "attrui", "attr", "q_global", 5, "obj-22", "attrui", "float", 50.0, 5, "obj-21", "attrui", "attr", "freq_shift", 5, "obj-21", "attrui", "float", -24.0, 5, "obj-20", "playlist~", "preset_count", 1, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u164007787", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-38", "attrui", "attr", "gain_8", 5, "obj-38", "attrui", "float", 12.0, 5, "obj-37", "attrui", "attr", "gain_7", 5, "obj-37", "attrui", "float", -48.0, 5, "obj-36", "attrui", "attr", "gain_6", 5, "obj-36", "attrui", "float", 12.0, 5, "obj-35", "attrui", "attr", "gain_5", 5, "obj-35", "attrui", "float", -48.0, 5, "obj-34", "attrui", "attr", "gain_4", 5, "obj-34", "attrui", "float", 12.0, 5, "obj-33", "attrui", "attr", "gain_3", 5, "obj-33", "attrui", "float", 12.0, 5, "obj-32", "attrui", "attr", "gain_2", 5, "obj-32", "attrui", "float", 3.0, 5, "obj-31", "attrui", "attr", "gain_1", 5, "obj-31", "attrui", "float", -5.0, 5, "obj-27", "attrui", "attr", "mix", 5, "obj-27", "attrui", "float", 48.0, 5, "obj-26", "attrui", "attr", "gain", 5, "obj-26", "attrui", "float", -5.0, 5, "obj-25", "attrui", "attr", "stereo_spread", 5, "obj-25", "attrui", "float", 30.0, 5, "obj-24", "attrui", "attr", "soft_clip", 5, "obj-24", "attrui", "float", 50.0, 5, "obj-23", "attrui", "attr", "drive", 5, "obj-23", "attrui", "float", 20.0, 5, "obj-22", "attrui", "attr", "q_global", 5, "obj-22", "attrui", "float", 20.0, 5, "obj-21", "attrui", "attr", "freq_shift", 5, "obj-21", "attrui", "float", -14.0, 5, "obj-20", "playlist~", "preset_count", 1, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u164007787", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-101",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 120.0, 195.0, 21.0 ],
                    "text": "── Master Resonator & Tune ──"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-102",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 120.0, 195.0, 21.0 ],
                    "text": "── 8 Resonant Bands (C2..C9) ──"
                }
            },
            {
                "box": {
                    "attr": "freq_shift",
                    "id": "obj-21",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 145.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "q_global",
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 175.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "id": "obj-23",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 205.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "soft_clip",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 235.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "stereo_spread",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 265.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 295.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-27",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 325.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_1",
                    "id": "obj-31",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 145.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_2",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 175.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_3",
                    "id": "obj-33",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 205.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_4",
                    "id": "obj-34",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 235.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_5",
                    "id": "obj-35",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 265.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_6",
                    "id": "obj-36",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 295.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_7",
                    "id": "obj-37",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 325.0, 195.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain_8",
                    "id": "obj-38",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 495.0, 355.0, 195.0, 23.0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-27", 0 ]
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
                    "hidden": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-38", 0 ]
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