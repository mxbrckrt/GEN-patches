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
        "openrect": [ 50.0, 50.0, 800.0, 600.0 ],
        "openrectmode": 0,
        "toolbars_unpinned_last_save": 2,
        "globalpatchername": "skipper",
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 79.0, 246.0, 27.0 ],
                    "text": "Skipping cd effect. Think Oval"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 19.0, 131.0, 47.0 ],
                    "text": "Skipper"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 231.0, 366.0, 92.0, 20.0 ],
                    "text": "playback speed"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 15.0, 553.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 331.0, 208.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 331.0, 236.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
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
                        "rect": [ 59.0, 121.0, 242.0, 311.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 83.0, 162.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 83.0, 122.0, 48.0, 22.0 ],
                                    "text": "pipe 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 83.0, 88.0, 32.0, 22.0 ],
                                    "text": "t 0 1"
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
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 83.0, 49.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 359.0, 237.0, 18.0, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-36",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 305.0, 164.0, 71.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "manual", "automatic" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "auto",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "auto",
                            "parameter_type": 2
                        }
                    },
                    "varname": "auto"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 173.0, 457.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
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
                    "patching_rect": [ 46.0, 180.0, 232.0754716981132, 83.28301886792464 ],
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
                    "patching_rect": [ 46.0, 139.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 237.0, 342.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 595.0, 488.0, 67.0, 20.0 ],
                    "text": "grains max"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 541.0, 118.0, 20.0 ],
                    "text": "max playback speed"
                }
            },
            {
                "box": {
                    "attr": "automode_speedmin",
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 514.0, 203.0318603515625, 22.0 ],
                    "text_width": 145.31986784934998
                }
            },
            {
                "box": {
                    "attr": "automode_speedmax",
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 540.0, 203.0318603515625, 22.0 ],
                    "text_width": 145.31986784934998
                }
            },
            {
                "box": {
                    "attr": "automode_grainmin",
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 462.0, 203.0318603515625, 22.0 ],
                    "text_width": 145.31986784934998
                }
            },
            {
                "box": {
                    "attr": "automode_grainmax",
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 487.0, 203.0318603515625, 22.0 ],
                    "text_width": 145.31986784934998
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 46.0, 387.0, 83.0, 146.0 ],
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
                    "id": "obj-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 162.0, 394.0, 78.0, 20.0 ],
                    "text": "duration time"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-71",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 173.0, 373.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 141.0, 41.0, 20.0 ],
                    "text": "mix %"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 262.0, 150.0, 20.0 ],
                    "text": "reading speed = varispeed"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 376.0, 76.0, 20.0 ],
                    "text": "downsample"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 350.0, 109.0, 20.0 ],
                    "text": "random panning %"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 325.0, 101.0, 20.0 ],
                    "text": "random hickup %"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 303.0, 105.0, 20.0 ],
                    "text": "random volume %"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 595.0, 237.0, 66.0, 20.0 ],
                    "text": "kill capture"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 595.0, 210.0, 85.0, 20.0 ],
                    "text": "manuel trigger"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 392.0, 440.0, 105.0, 20.0 ],
                    "text": "automode params"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 595.0, 188.0, 95.0, 20.0 ],
                    "text": "automode on/off"
                }
            },
            {
                "box": {
                    "attr": "automode_on",
                    "id": "obj-55",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 186.0, 202.66667640209198, 22.0 ],
                    "text_width": 124.51056250929832
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 595.0, 164.0, 187.0, 20.0 ],
                    "text": "trigger mode (0=manuel / 1=auto)"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 515.0, 115.0, 20.0 ],
                    "text": "min playback speed"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 463.0, 64.0, 20.0 ],
                    "text": "grains min"
                }
            },
            {
                "box": {
                    "attr": "downsample",
                    "id": "obj-34",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 374.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.09960532188416
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 173.0, 493.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-16", "attrui", "attr", "mix", 5, "obj-16", "attrui", "float", 75.0, 5, "obj-14", "attrui", "attr", "trigger", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-26", "attrui", "attr", "kill_capture", 5, "obj-26", "attrui", "float", 0.0, 5, "obj-29", "attrui", "attr", "triggermode", 5, "obj-29", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "pan_percentage", 5, "obj-9", "attrui", "float", 20.0, 5, "obj-6", "attrui", "attr", "hickup_percentage", 5, "obj-6", "attrui", "float", 0.0, 5, "obj-32", "attrui", "attr", "volume_percentage", 5, "obj-32", "attrui", "float", 35.0, 5, "obj-39", "attrui", "attr", "speed", 5, "obj-39", "attrui", "float", 1.0, 5, "obj-34", "attrui", "attr", "downsample", 5, "obj-34", "attrui", "float", 15.0, 5, "obj-55", "attrui", "attr", "automode_on", 5, "obj-55", "attrui", "float", 1.0, 6, "obj-71", "number~", "list", 0.0, 0.0, 5, "obj-8", "attrui", "attr", "automode_grainmax", 5, "obj-8", "attrui", "float", 250.0, 5, "obj-5", "attrui", "attr", "automode_grainmin", 5, "obj-5", "attrui", "float", 80.0, 5, "obj-4", "attrui", "attr", "automode_speedmax", 5, "obj-4", "attrui", "float", 250.0, 5, "obj-3", "attrui", "attr", "automode_speedmin", 5, "obj-3", "attrui", "float", 80.0, 6, "obj-13", "number~", "list", 0.0, 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute", 5, "obj-36", "live.menu", "float", 1.0, 5, "obj-28", "toggle", "int", 0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-16", "attrui", "attr", "mix", 5, "obj-16", "attrui", "float", 100.0, 5, "obj-14", "attrui", "attr", "trigger", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-26", "attrui", "attr", "kill_capture", 5, "obj-26", "attrui", "float", 0.0, 5, "obj-29", "attrui", "attr", "triggermode", 5, "obj-29", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "pan_percentage", 5, "obj-9", "attrui", "float", 60.0, 5, "obj-6", "attrui", "attr", "hickup_percentage", 5, "obj-6", "attrui", "float", 45.0, 5, "obj-32", "attrui", "attr", "volume_percentage", 5, "obj-32", "attrui", "float", 100.0, 5, "obj-39", "attrui", "attr", "speed", 5, "obj-39", "attrui", "float", 1.0, 5, "obj-34", "attrui", "attr", "downsample", 5, "obj-34", "attrui", "float", 40.0, 5, "obj-55", "attrui", "attr", "automode_on", 5, "obj-55", "attrui", "float", 1.0, 6, "obj-71", "number~", "list", 0.0, 0.0, 5, "obj-8", "attrui", "attr", "automode_grainmax", 5, "obj-8", "attrui", "float", 500.0, 5, "obj-5", "attrui", "attr", "automode_grainmin", 5, "obj-5", "attrui", "float", 100.0, 5, "obj-4", "attrui", "attr", "automode_speedmax", 5, "obj-4", "attrui", "float", 2.0, 5, "obj-3", "attrui", "attr", "automode_speedmin", 5, "obj-3", "attrui", "float", 2.0, 6, "obj-13", "number~", "list", 0.0, 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u496005161", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute", 5, "obj-36", "live.menu", "float", 1.0, 5, "obj-28", "toggle", "int", 0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-16", "attrui", "attr", "mix", 5, "obj-16", "attrui", "float", 85.0, 5, "obj-14", "attrui", "attr", "trigger", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-26", "attrui", "attr", "kill_capture", 5, "obj-26", "attrui", "float", 0.0, 5, "obj-29", "attrui", "attr", "triggermode", 5, "obj-29", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "pan_percentage", 5, "obj-9", "attrui", "float", 100.0, 5, "obj-6", "attrui", "attr", "hickup_percentage", 5, "obj-6", "attrui", "float", 30.0, 5, "obj-32", "attrui", "attr", "volume_percentage", 5, "obj-32", "attrui", "float", 100.0, 5, "obj-39", "attrui", "attr", "speed", 5, "obj-39", "attrui", "float", 1.0, 5, "obj-34", "attrui", "attr", "downsample", 5, "obj-34", "attrui", "float", 20.0, 5, "obj-55", "attrui", "attr", "automode_on", 5, "obj-55", "attrui", "float", 1.0, 6, "obj-71", "number~", "list", 0.0, 0.0, 5, "obj-8", "attrui", "attr", "automode_grainmax", 5, "obj-8", "attrui", "float", 10.0, 5, "obj-5", "attrui", "attr", "automode_grainmin", 5, "obj-5", "attrui", "float", 10.0, 5, "obj-4", "attrui", "attr", "automode_speedmax", 5, "obj-4", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "automode_speedmin", 5, "obj-3", "attrui", "float", 100.0, 6, "obj-13", "number~", "list", 0.0, 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u655006480", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute", 5, "obj-36", "live.menu", "float", 1.0, 5, "obj-28", "toggle", "int", 0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-16", "attrui", "attr", "mix", 5, "obj-16", "attrui", "float", 60.0, 5, "obj-14", "attrui", "attr", "trigger", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-26", "attrui", "attr", "kill_capture", 5, "obj-26", "attrui", "float", 0.0, 5, "obj-29", "attrui", "attr", "triggermode", 5, "obj-29", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "pan_percentage", 5, "obj-9", "attrui", "float", 90.0, 5, "obj-6", "attrui", "attr", "hickup_percentage", 5, "obj-6", "attrui", "float", 50.0, 5, "obj-32", "attrui", "attr", "volume_percentage", 5, "obj-32", "attrui", "float", 60.0, 5, "obj-39", "attrui", "attr", "speed", 5, "obj-39", "attrui", "float", -1.0, 5, "obj-34", "attrui", "attr", "downsample", 5, "obj-34", "attrui", "float", 25.0, 5, "obj-55", "attrui", "attr", "automode_on", 5, "obj-55", "attrui", "float", 1.0, 6, "obj-71", "number~", "list", 0.0, 0.0, 5, "obj-8", "attrui", "attr", "automode_grainmax", 5, "obj-8", "attrui", "float", 1500.0, 5, "obj-5", "attrui", "attr", "automode_grainmin", 5, "obj-5", "attrui", "float", 500.0, 5, "obj-4", "attrui", "attr", "automode_speedmax", 5, "obj-4", "attrui", "float", 2.0, 5, "obj-3", "attrui", "attr", "automode_speedmin", 5, "obj-3", "attrui", "float", 2.0, 6, "obj-13", "number~", "list", 0.0, 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u537011248", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute", 5, "obj-36", "live.menu", "float", 1.0, 5, "obj-28", "toggle", "int", 0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-16", "attrui", "attr", "mix", 5, "obj-16", "attrui", "float", 70.0, 5, "obj-14", "attrui", "attr", "trigger", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-26", "attrui", "attr", "kill_capture", 5, "obj-26", "attrui", "float", 0.0, 5, "obj-29", "attrui", "attr", "triggermode", 5, "obj-29", "attrui", "float", 1.0, 5, "obj-9", "attrui", "attr", "pan_percentage", 5, "obj-9", "attrui", "float", 0.0, 5, "obj-6", "attrui", "attr", "hickup_percentage", 5, "obj-6", "attrui", "float", 0.0, 5, "obj-32", "attrui", "attr", "volume_percentage", 5, "obj-32", "attrui", "float", 25.0, 5, "obj-39", "attrui", "attr", "speed", 5, "obj-39", "attrui", "float", 0.25, 5, "obj-34", "attrui", "attr", "downsample", 5, "obj-34", "attrui", "float", 0.0, 5, "obj-55", "attrui", "attr", "automode_on", 5, "obj-55", "attrui", "float", 1.0, 6, "obj-71", "number~", "list", 0.0, 0.0, 5, "obj-8", "attrui", "attr", "automode_grainmax", 5, "obj-8", "attrui", "float", 800.0, 5, "obj-5", "attrui", "attr", "automode_grainmin", 5, "obj-5", "attrui", "float", 150.0, 5, "obj-4", "attrui", "attr", "automode_speedmax", 5, "obj-4", "attrui", "float", 50.0, 5, "obj-3", "attrui", "attr", "automode_speedmin", 5, "obj-3", "attrui", "float", 50.0, 6, "obj-13", "number~", "list", 0.0, 0.0, 5, "obj-20", "playlist~", "preset_count", 2, 7, "obj-20", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-20", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 1, "id", "u210012308", 7, "obj-20", "playlist~", "preset_content", 1, "loop", 1, 7, "obj-20", "playlist~", "preset_clipstate", 2, "filekind", "audiofile", 7, "obj-20", "playlist~", "preset_clipstate", 2, "absolutepath", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "filename", "tabla-solo.wav", 7, "obj-20", "playlist~", "preset_clipstate", 2, "loop", 1, 8, "obj-20", "playlist~", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-20", "playlist~", "preset_clipstate", 2, "id", "u537011248", 7, "obj-20", "playlist~", "preset_content", 2, "loop", 1, 4, "obj-20", "playlist~", "preset_execute", 5, "obj-36", "live.menu", "float", 1.0, 5, "obj-28", "toggle", "int", 0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "speed",
                    "id": "obj-39",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 259.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.09960532188416
                }
            },
            {
                "box": {
                    "attr": "volume_percentage",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 301.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.09960532188416
                }
            },
            {
                "box": {
                    "attr": "hickup_percentage",
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 325.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.09960532188416
                }
            },
            {
                "box": {
                    "attr": "pan_percentage",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 350.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.09960532188416
                }
            },
            {
                "box": {
                    "attr": "triggermode",
                    "id": "obj-29",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 161.0, 202.66667640209198, 22.0 ],
                    "text_width": 124.51056250929832
                }
            },
            {
                "box": {
                    "attr": "kill_capture",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 236.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.49801170825958
                }
            },
            {
                "box": {
                    "attr": "trigger",
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 210.0, 203.0318603515625, 22.0 ],
                    "text_width": 125.49801170825958
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 388.0, 139.0, 203.0318603515625, 22.0 ],
                    "text_width": 124.0
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 554.0, 48.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 46.0, 293.0, 209.0, 22.0 ],
                    "text": "gen~ @gen skipper",
                    "varname": "skipper"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-16", 0 ]
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
                    "destination": [ "obj-26", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-2", 0 ]
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
                    "destination": [ "obj-2", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "hidden": 1,
                    "source": [ "obj-23", 0 ]
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
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
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
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2": [ "live.gain~", "live.gain~", 0 ],
            "obj-36": [ "auto", "auto", 0 ],
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