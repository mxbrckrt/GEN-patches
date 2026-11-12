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
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.5, 106.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.5, 57.0, 423.0, 47.0 ],
                    "text": "Sort of overdrive/ringmod. Simulates a dying battery\nVoltage-Starved Ring Modulator with Pitch Tracking"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 489.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "attr": "freq_main_amp",
                    "bgcolor": [ 0.17647058823529413, 0.17647058823529413, 0.3686274509803922, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 364.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "attr": "freq_main",
                    "bgcolor": [ 0.17647058823529413, 0.17647058823529413, 0.3686274509803922, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 340.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "attr": "freq_min",
                    "bgcolor": [ 0.40784313725490196, 0.058823529411764705, 0.40784313725490196, 1.0 ],
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 258.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "freq_max",
                    "bgcolor": [ 0.40784313725490196, 0.058823529411764705, 0.40784313725490196, 1.0 ],
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 232.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "autofollow",
                    "bgcolor": [ 0.40784313725490196, 0.058823529411764705, 0.40784313725490196, 1.0 ],
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 206.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "gainout",
                    "bgcolor": [ 0.09411764705882353, 0.3333333333333333, 0.19607843137254902, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 432.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 160.0, 524.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-21", "attrui", "attr", "rise", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-22", "attrui", "attr", "fall", 5, "obj-22", "attrui", "float", 20.0, 5, "obj-53", "attrui", "attr", "instability", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-54", "attrui", "attr", "gate", 5, "obj-54", "attrui", "float", 60.0, 5, "obj-58", "attrui", "attr", "gate_gainin", 5, "obj-58", "attrui", "float", 5.0, 5, "obj-1", "attrui", "attr", "mix", 5, "obj-1", "attrui", "float", 100.0, 5, "obj-2", "attrui", "attr", "sag", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "tone", 5, "obj-3", "attrui", "float", 100.0, 5, "obj-4", "attrui", "attr", "compression", 5, "obj-4", "attrui", "float", 40.0, 5, "obj-12", "attrui", "attr", "selfmod", 5, "obj-12", "attrui", "float", 100.0, 5, "obj-6", "attrui", "attr", "gainout", 5, "obj-6", "attrui", "float", -6.0, 5, "obj-9", "attrui", "attr", "autofollow", 5, "obj-9", "attrui", "float", 0.0, 5, "obj-8", "attrui", "attr", "freq_max", 5, "obj-8", "attrui", "float", 500.0, 5, "obj-14", "attrui", "attr", "freq_min", 5, "obj-14", "attrui", "float", 400.0, 5, "obj-17", "attrui", "attr", "freq_main", 5, "obj-17", "attrui", "float", 800.0, 5, "obj-16", "attrui", "attr", "freq_main_amp", 5, "obj-16", "attrui", "float", 0.05 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-21", "attrui", "attr", "rise", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-22", "attrui", "attr", "fall", 5, "obj-22", "attrui", "float", 20.0, 5, "obj-53", "attrui", "attr", "instability", 5, "obj-53", "attrui", "float", 100.0, 5, "obj-54", "attrui", "attr", "gate", 5, "obj-54", "attrui", "float", 30.0, 5, "obj-58", "attrui", "attr", "gate_gainin", 5, "obj-58", "attrui", "float", 5.0, 5, "obj-1", "attrui", "attr", "mix", 5, "obj-1", "attrui", "float", 100.0, 5, "obj-2", "attrui", "attr", "sag", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "tone", 5, "obj-3", "attrui", "float", 40.0, 5, "obj-4", "attrui", "attr", "compression", 5, "obj-4", "attrui", "float", 100.0, 5, "obj-12", "attrui", "attr", "selfmod", 5, "obj-12", "attrui", "float", 0.0, 5, "obj-6", "attrui", "attr", "gainout", 5, "obj-6", "attrui", "float", -16.0, 5, "obj-9", "attrui", "attr", "autofollow", 5, "obj-9", "attrui", "float", 0.0, 5, "obj-8", "attrui", "attr", "freq_max", 5, "obj-8", "attrui", "float", 500.0, 5, "obj-14", "attrui", "attr", "freq_min", 5, "obj-14", "attrui", "float", 400.0, 5, "obj-17", "attrui", "attr", "freq_main", 5, "obj-17", "attrui", "float", 800.0, 5, "obj-16", "attrui", "attr", "freq_main_amp", 5, "obj-16", "attrui", "float", 1.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-21", "attrui", "attr", "rise", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-22", "attrui", "attr", "fall", 5, "obj-22", "attrui", "float", 3.0, 5, "obj-53", "attrui", "attr", "instability", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-54", "attrui", "attr", "gate", 5, "obj-54", "attrui", "float", 50.0, 5, "obj-58", "attrui", "attr", "gate_gainin", 5, "obj-58", "attrui", "float", 5.0, 5, "obj-1", "attrui", "attr", "mix", 5, "obj-1", "attrui", "float", 100.0, 5, "obj-2", "attrui", "attr", "sag", 5, "obj-2", "attrui", "float", 80.0, 5, "obj-3", "attrui", "attr", "tone", 5, "obj-3", "attrui", "float", 100.0, 5, "obj-4", "attrui", "attr", "compression", 5, "obj-4", "attrui", "float", 40.0, 5, "obj-12", "attrui", "attr", "selfmod", 5, "obj-12", "attrui", "float", 10.0, 5, "obj-6", "attrui", "attr", "gainout", 5, "obj-6", "attrui", "float", -16.0, 5, "obj-9", "attrui", "attr", "autofollow", 5, "obj-9", "attrui", "float", 20.0, 5, "obj-8", "attrui", "attr", "freq_max", 5, "obj-8", "attrui", "float", 500.0, 5, "obj-14", "attrui", "attr", "freq_min", 5, "obj-14", "attrui", "float", 400.0, 5, "obj-17", "attrui", "attr", "freq_main", 5, "obj-17", "attrui", "float", 2500.0, 5, "obj-16", "attrui", "attr", "freq_main_amp", 5, "obj-16", "attrui", "float", 1.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-21", "attrui", "attr", "rise", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-22", "attrui", "attr", "fall", 5, "obj-22", "attrui", "float", 3.0, 5, "obj-53", "attrui", "attr", "instability", 5, "obj-53", "attrui", "float", 0.25, 5, "obj-54", "attrui", "attr", "gate", 5, "obj-54", "attrui", "float", 50.0, 5, "obj-58", "attrui", "attr", "gate_gainin", 5, "obj-58", "attrui", "float", 5.0, 5, "obj-1", "attrui", "attr", "mix", 5, "obj-1", "attrui", "float", 90.0, 5, "obj-2", "attrui", "attr", "sag", 5, "obj-2", "attrui", "float", 80.0, 5, "obj-3", "attrui", "attr", "tone", 5, "obj-3", "attrui", "float", 100.0, 5, "obj-4", "attrui", "attr", "compression", 5, "obj-4", "attrui", "float", 100.0, 5, "obj-12", "attrui", "attr", "selfmod", 5, "obj-12", "attrui", "float", 10.0, 5, "obj-6", "attrui", "attr", "gainout", 5, "obj-6", "attrui", "float", -16.0, 5, "obj-9", "attrui", "attr", "autofollow", 5, "obj-9", "attrui", "float", 44.0, 5, "obj-8", "attrui", "attr", "freq_max", 5, "obj-8", "attrui", "float", 900.0, 5, "obj-14", "attrui", "attr", "freq_min", 5, "obj-14", "attrui", "float", 400.0, 5, "obj-17", "attrui", "attr", "freq_main", 5, "obj-17", "attrui", "float", 4000.0, 5, "obj-16", "attrui", "attr", "freq_main_amp", 5, "obj-16", "attrui", "float", 0.07 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-21", "attrui", "attr", "rise", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-22", "attrui", "attr", "fall", 5, "obj-22", "attrui", "float", 12.0, 5, "obj-53", "attrui", "attr", "instability", 5, "obj-53", "attrui", "float", 100.0, 5, "obj-54", "attrui", "attr", "gate", 5, "obj-54", "attrui", "float", 100.0, 5, "obj-58", "attrui", "attr", "gate_gainin", 5, "obj-58", "attrui", "float", 5.0, 5, "obj-1", "attrui", "attr", "mix", 5, "obj-1", "attrui", "float", 95.0, 5, "obj-2", "attrui", "attr", "sag", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "tone", 5, "obj-3", "attrui", "float", 63.0, 5, "obj-4", "attrui", "attr", "compression", 5, "obj-4", "attrui", "float", 100.0, 5, "obj-12", "attrui", "attr", "selfmod", 5, "obj-12", "attrui", "float", 6.0, 5, "obj-6", "attrui", "attr", "gainout", 5, "obj-6", "attrui", "float", -10.0, 5, "obj-9", "attrui", "attr", "autofollow", 5, "obj-9", "attrui", "float", 0.0, 5, "obj-8", "attrui", "attr", "freq_max", 5, "obj-8", "attrui", "float", 207.0, 5, "obj-14", "attrui", "attr", "freq_min", 5, "obj-14", "attrui", "float", 400.0, 5, "obj-17", "attrui", "attr", "freq_main", 5, "obj-17", "attrui", "float", 250.0, 5, "obj-16", "attrui", "attr", "freq_main_amp", 5, "obj-16", "attrui", "float", 0.4 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "selfmod",
                    "bgcolor": [ 0.35294117647058826, 0.35294117647058826, 0.35294117647058826, 1.0 ],
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 304.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "clipheight": 40.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u814008767",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-11",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 31.5, 133.0, 329.0, 41.0 ],
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
                    "attr": "compression",
                    "bgcolor": [ 0.09411764705882353, 0.3333333333333333, 0.19607843137254902, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 408.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "attr": "tone",
                    "bgcolor": [ 0.3686274509803922, 0.3568627450980392, 0.027450980392156862, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 326.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "sag",
                    "bgcolor": [ 0.3686274509803922, 0.3568627450980392, 0.027450980392156862, 1.0 ],
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 300.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 179.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.5, 5.0, 191.0, 47.0 ],
                    "text": "volt syphon"
                }
            },
            {
                "box": {
                    "attr": "gate_gainin",
                    "bgcolor": [ 0.35294117647058826, 0.35294117647058826, 0.35294117647058826, 1.0 ],
                    "id": "obj-58",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 205.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 31.0, 469.0, 97.0, 95.0 ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
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
                    "attr": "gate",
                    "bgcolor": [ 0.35294117647058826, 0.35294117647058826, 0.35294117647058826, 1.0 ],
                    "id": "obj-54",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 230.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "attr": "instability",
                    "bgcolor": [ 0.3686274509803922, 0.3568627450980392, 0.027450980392156862, 1.0 ],
                    "id": "obj-53",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 353.0, 200.0, 22.0 ],
                    "text_width": 140.0
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 571.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "attr": "fall",
                    "bgcolor": [ 0.35294117647058826, 0.35294117647058826, 0.35294117647058826, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 279.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "attr": "rise",
                    "bgcolor": [ 0.35294117647058826, 0.35294117647058826, 0.35294117647058826, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 174.0, 255.0, 200.0, 22.0 ],
                    "text_width": 141.0
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 31.0, 435.0, 136.0, 22.0 ],
                    "text": "gen~ @gen volt-syphon"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-57", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 1 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-57": [ "live.gain~", "live.gain~", 0 ],
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