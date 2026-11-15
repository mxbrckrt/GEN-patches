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
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 287.0, 451.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 287.0, 485.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-41", "live.dial", "float", 0.0, 5, "obj-90", "live.dial", "float", 2404.766357421875, 5, "obj-17", "live.dial", "float", 1.0, 5, "obj-24", "live.dial", "float", 1.0, 5, "obj-26", "live.dial", "float", 1.0, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u024006579", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-41", "live.dial", "float", 1.0, 5, "obj-90", "live.dial", "float", 369.19537353515625, 5, "obj-17", "live.dial", "float", 1.0, 5, "obj-24", "live.dial", "float", 1.0, 5, "obj-26", "live.dial", "float", 15.488188743591309, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u024006579", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.15748032927513123 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-41", "live.dial", "float", 0.0, 5, "obj-90", "live.dial", "float", 5286.92578125, 5, "obj-17", "live.dial", "float", 1.0, 5, "obj-24", "live.dial", "float", 1.0, 5, "obj-26", "live.dial", "float", 9.692913055419922, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u024006579", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.9763779640197754 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-41", "live.dial", "float", 1.0, 5, "obj-90", "live.dial", "float", 8602.736328125, 5, "obj-17", "live.dial", "float", 1.0, 5, "obj-24", "live.dial", "float", 1.0, 5, "obj-26", "live.dial", "float", 24.0, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u024006579", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.9763779640197754 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 148.0, 266.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 33.0, 76.0, 469.0, 47.0 ],
                    "text": "state variable filter wher \"mode\" mixes between highpass to lowpass. Add some gain, overdrive an stereo space"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 33.0, 23.0, 237.0, 47.0 ],
                    "text": "Precision SVF"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.0, 283.0, 29.0, 22.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 328.0, 137.0, 41.0, 48.0 ],
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
                            "parameter_longname": "width",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "width",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "width"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 328.0, 205.0, 53.0, 22.0 ],
                    "text": "width $1"
                }
            },
            {
                "box": {
                    "clipheight": 78.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "drumLoop.aif",
                                "filename": "drumLoop.aif",
                                "filekind": "audiofile",
                                "id": "u024006579",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-29",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 148.0, 290.0, 318.0, 78.0 ],
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
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-26",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 268.0, 137.0, 41.0, 48.0 ],
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
                            "parameter_longname": "drive",
                            "parameter_mmax": 24.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "drive",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "drive"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 204.0, 51.0, 22.0 ],
                    "text": "drive $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 209.0, 137.0, 41.0, 48.0 ],
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
                            "parameter_longname": "gain",
                            "parameter_mmax": 12.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "gain"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 209.0, 204.0, 48.0, 22.0 ],
                    "text": "gain $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 159.0, 137.0, 41.0, 48.0 ],
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
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 159.0, 204.0, 44.0, 22.0 ],
                    "text": "mix $1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 148.0, 413.0, 94.0, 136.0 ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -20 ],
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
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 565.0, 37.75, 22.0 ],
                    "text": "dac~"
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
                    "patching_rect": [ 102.0, 137.0, 41.0, 48.0 ],
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
                            "parameter_exponent": 2.22222,
                            "parameter_initial": [ 1000 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "freq",
                            "parameter_mmax": 18000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "freq",
                            "parameter_speedlim": 1.666,
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "freq"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 102.0, 204.0, 78.0, 22.0 ],
                    "text": "frequency $1"
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
                    "patching_rect": [ 40.0, 137.0, 41.0, 48.0 ],
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
                            "parameter_longname": "mode",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mode",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "mode"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.0, 204.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 148.0, 383.0, 172.0, 22.0 ],
                    "text": "gen~ @gen precision-svf-48db"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 168.5, 254.5, 49.5, 254.5 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 218.5, 254.5, 49.5, 254.5 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 277.5, 254.5, 49.5, 254.5 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 337.5, 254.7016606926918, 49.5, 254.7016606926918 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 49.5, 370.55859375, 157.5, 370.55859375 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
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
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 111.5, 254.5, 49.5, 254.5 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.gain~", "live.gain~", 0 ],
            "obj-17": [ "mix", "mix", 0 ],
            "obj-24": [ "gain", "gain", 0 ],
            "obj-26": [ "drive", "drive", 0 ],
            "obj-32": [ "width", "width", 0 ],
            "obj-41": [ "mode", "mode", 0 ],
            "obj-90": [ "freq", "freq", 0 ],
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