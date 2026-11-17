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
        "rect": [ 120.0, 150.0, 743.0, 703.0 ],
        "default_fontname": "Lato",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 412.0, 53.0, 21.0 ],
                    "text": "Audio in"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 158.5, 412.0, 58.0, 21.0 ],
                    "text": "Exciter in"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 30.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 15.0, 342.0, 40.0 ],
                    "text": "Rings (Modal Resonator)"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 58.0, 559.0, 36.0 ],
                    "text": "Physical modeling modal resonator based on Mutable Instruments Rings (24 modes ZDF SVF).\nVibrating strings, bars, chimes & plates with internal strum exciter and stereo spatialization."
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 32.0, 120.0, 35.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "clipheight": 84.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u251008633",
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
                    "patching_rect": [ 32.0, 150.0, 230.0, 85.0 ],
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
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 395.0, 121.0, 20.0 ],
                    "text": "── Strum Exciter ──"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 479.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 418.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 280.0, 448.0, 71.0, 23.0 ],
                    "text": "metro 2000"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-104",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 420.0, 75.0, 19.0 ],
                    "text": "Auto Pluck"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 32.0, 435.0, 124.5, 23.0 ],
                    "text": "gen~ @gen rings",
                    "varname": "rings_gen"
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
                    "patching_rect": [ 32.0, 475.0, 48.0, 136.0 ],
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
                    "patching_rect": [ 32.0, 620.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 95.0, 485.0, 70.0, 23.0 ],
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
                    "patching_rect": [ 95.0, 520.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-35", "attrui", "attr", "mix", 5, "obj-35", "attrui", "float", 100.0, 5, "obj-34", "attrui", "attr", "gain", 5, "obj-34", "attrui", "float", -6.0, 5, "obj-33", "attrui", "attr", "drive", 5, "obj-33", "attrui", "float", 0.0, 5, "obj-32", "attrui", "attr", "stereo_spread", 5, "obj-32", "attrui", "float", 25.0, 5, "obj-31", "attrui", "attr", "internal_exciter", 5, "obj-31", "attrui", "float", 100.0, 5, "obj-25", "attrui", "attr", "position", 5, "obj-25", "attrui", "float", 0.0, 5, "obj-24", "attrui", "attr", "damping", 5, "obj-24", "attrui", "float", 0.30000000000000004, 5, "obj-23", "attrui", "attr", "brightness", 5, "obj-23", "attrui", "float", 0.6000000000000001, 5, "obj-22", "attrui", "attr", "structure", 5, "obj-22", "attrui", "float", 0.6500000000000001, 5, "obj-21", "attrui", "attr", "pitch", 5, "obj-21", "attrui", "float", 62.0, 5, "obj-42", "toggle", "int", 1, 5, "obj-20", "playlist~", "preset_count", 1, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u251008633", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-35", "attrui", "attr", "mix", 5, "obj-35", "attrui", "float", 45.0, 5, "obj-34", "attrui", "attr", "gain", 5, "obj-34", "attrui", "float", -10.0, 5, "obj-33", "attrui", "attr", "drive", 5, "obj-33", "attrui", "float", 25.0, 5, "obj-32", "attrui", "attr", "stereo_spread", 5, "obj-32", "attrui", "float", 81.0, 5, "obj-31", "attrui", "attr", "internal_exciter", 5, "obj-31", "attrui", "float", 100.0, 5, "obj-25", "attrui", "attr", "position", 5, "obj-25", "attrui", "float", 0.0, 5, "obj-24", "attrui", "attr", "damping", 5, "obj-24", "attrui", "float", 0.5200000000000001, 5, "obj-23", "attrui", "attr", "brightness", 5, "obj-23", "attrui", "float", 0.6000000000000001, 5, "obj-22", "attrui", "attr", "structure", 5, "obj-22", "attrui", "float", 0.19000000000000003, 5, "obj-21", "attrui", "attr", "pitch", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-42", "toggle", "int", 0, 5, "obj-20", "playlist~", "preset_count", 1, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u251008633", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-20", "playlist~", "preset_execute" ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-101",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 120.0, 208.0, 20.0 ],
                    "text": "── Modal Structure & Tuning ──"
                }
            },
            {
                "box": {
                    "attr": "pitch",
                    "id": "obj-21",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 150.0, 210.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "structure",
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 185.0, 210.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "brightness",
                    "id": "obj-23",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 220.0, 210.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 255.0, 210.0, 23.0 ]
                }
            },
            {
                "box": {
                    "attr": "position",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 290.0, 210.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-105",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 325.0, 206.0, 56.0 ],
                    "text": "Structure Map:\n• < 0.25 : Subharmonic / Wood\n• = 0.25 : Ideal Harmonic String\n• 0.3..0.85 : Bar / Chime / Bell / Drum"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-102",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.0, 120.0, 209.0, 20.0 ],
                    "text": "── Exciter & Spatialization ──"
                }
            },
            {
                "box": {
                    "attr": "internal_exciter",
                    "id": "obj-31",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 150.0, 210.0, 23.0 ],
                    "text_width": 108.0
                }
            },
            {
                "box": {
                    "attr": "stereo_spread",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 185.0, 210.0, 23.0 ],
                    "text_width": 108.0
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "id": "obj-33",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 220.0, 210.0, 23.0 ],
                    "text_width": 108.77622377622379
                }
            },
            {
                "box": {
                    "attr": "gain",
                    "id": "obj-34",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 255.0, 210.0, 23.0 ],
                    "text_width": 108.77622377622379
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-35",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 290.0, 210.0, 23.0 ],
                    "text_width": 110.17482517482517
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 280.0, 507.0, 41.0, 23.0 ],
                    "text": "click~"
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
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-45", 0 ]
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