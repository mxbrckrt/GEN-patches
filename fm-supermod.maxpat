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
        "openrect": [ 50.0, 50.0, 900.0, 800.0 ],
        "openrectmode": 0,
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-11",
                    "maxclass": "flonum",
                    "maximum": 16000.0,
                    "minimum": 40.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 326.5982142857142, 396.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 313.3928571428571, 613.0, 300.0, 100.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 313.3928571428571, 141.9642857142857, 336.0, 53.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "maximum": 16000.0,
                    "minimum": 40.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 313.3928571428571, 331.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 26.785714285714285, 281.0, 82.14285714285714, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "audio", "sinewave", "noise", "midi" ],
                            "parameter_longname": "live.menu[1]",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu[1]"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 656.2499999999999, 367.0, 20.535714285714285, 20.535714285714285 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 561.6071428571428, 216.0, 111.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "ring mod", "time/ doppler", "adaptive audio" ],
                            "parameter_longname": "live.menu",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 656.2499999999999, 418.0, 64.0, 22.0 ],
                    "text": "filter_lp $1"
                }
            },
            {
                "box": {
                    "hint": "Treat in1 as MIDI pitch, 0: Treat in1 as Audio",
                    "id": "obj-13",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 558.0357142857142, 367.0, 20.535714285714285, 20.535714285714285 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "midiornot",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "midiornot",
                            "parameter_type": 2
                        }
                    },
                    "varname": "midiornot"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0357142857142, 418.0, 91.0, 22.0 ],
                    "text": "use_note_in $1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 247.32142857142856, 613.0, 47.0, 22.0 ],
                    "text": "clearall"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 166.07142857142856, 613.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 166.07142857142856, 664.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-90", "live.dial", "float", 220.0, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.0, 5, "obj-26", "live.dial", "float", 2.0, 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 0.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 0.0, 5, "obj-23", "kslider", "int", 36 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-90", "live.dial", "float", 242.01573181152344, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 0.009999999776482582, 5, "obj-26", "live.dial", "float", 13.023622512817383, 5, "obj-32", "live.dial", "float", -14.17322826385498, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 0.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-90", "live.dial", "float", 758.694091796875, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 5.9589762687683105, 5, "obj-26", "live.dial", "float", 20.11023712158203, 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 1.0, 5, "obj-16", "live.menu", "float", 2.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-90", "live.dial", "float", 270.1294860839844, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 7.139685153961182, 5, "obj-26", "live.dial", "float", 25.9842529296875, 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 1.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 55, 5, "obj-11", "number", "float", 450.0 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-90", "live.dial", "float", 429.1981506347656, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 3.8337008953094482, 5, "obj-26", "live.dial", "float", 2.7874016761779785, 5, "obj-32", "live.dial", "float", 0.6614173054695129, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 0.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 2.0, 5, "obj-22", "number", "float", 40.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0 ]
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
                    "patching_rect": [ 61.607142857142854, 309.0, 35.0, 22.0 ],
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
                    "patching_rect": [ 30.357142857142854, 72.32142857142857, 430.35714285714283, 47.0 ],
                    "text": "Quadrature Cross-Feedback FM Engine & Live Audio Modulator (Ring Mod / Doppler FM / Adaptive)"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.357142857142854, 19.642857142857142, 280.0, 47.0 ],
                    "text": "FM-SUPERMOD"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 506.24999999999994, 466.0, 29.0, 22.0 ],
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
                    "patching_rect": [ 817.0714285714286, 244.0, 41.0, 48.0 ],
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
                            "parameter_longname": "feedback",
                            "parameter_mmax": 2.0,
                            "parameter_mmin": -2.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "feedback",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "feedback"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 817.0714285714286, 311.0, 74.0, 22.0 ],
                    "text": "feedback $1"
                }
            },
            {
                "box": {
                    "clipheight": 45.42857142857142,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u923006814",
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
                    "patching_rect": [ 61.607142857142854, 337.0, 222.32142857142856, 46.42857142857142 ],
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
                    "patching_rect": [ 741.0714285714286, 244.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "index",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "index",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "index"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 741.0714285714286, 311.0, 74.0, 22.0 ],
                    "text": "fm_index $1"
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
                    "patching_rect": [ 682.1428571428571, 244.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ratio",
                            "parameter_mmax": 30.0,
                            "parameter_mmin": 0.01,
                            "parameter_modmode": 4,
                            "parameter_shortname": "ratio",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "ratio"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.1428571428571, 311.0, 49.0, 22.0 ],
                    "text": "ratio $1"
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
                    "patching_rect": [ 506.24999999999994, 244.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "mix",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "mix",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
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
                    "patching_rect": [ 506.24999999999994, 311.0, 44.0, 22.0 ],
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
                    "patching_rect": [ 26.785714285714285, 593.0, 94.0, 136.0 ],
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
                    "patching_rect": [ 26.785714285714285, 744.0, 37.75, 22.0 ],
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
                    "patching_rect": [ 623.2142857142857, 244.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 220 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "freq",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 0.1,
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
                    "patching_rect": [ 623.2142857142857, 311.0, 46.0, 22.0 ],
                    "text": "freq $1"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 561.6071428571428, 311.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 313.3928571428571, 361.0, 66.0, 22.0 ],
                    "text": "cycle~ 100"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 326.5982142857142, 428.0, 63.0, 22.0 ],
                    "text": "rand~ 100"
                }
            },
            {
                "box": {
                    "id": "obj-sig-note",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 426.5357142857142, 361.0, 48.0, 22.0 ],
                    "text": "sig~ 60"
                }
            },
            {
                "box": {
                    "id": "obj-sel-L",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 26.785714285714285, 466.0, 418.74999999999994, 22.0 ],
                    "text": "selector~ 4 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gen",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 26.785714285714285, 540.0, 93.99999999999993, 35.0 ],
                    "text": "gen~ @gen fm-supermod"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-noise", 0 ],
                    "source": [ "obj-11", 0 ]
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
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 665.7499999999999, 452.7678571428572, 515.75, 452.7678571428572 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-16", 0 ]
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
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cycle", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig-note", 0 ],
                    "source": [ "obj-23", 0 ]
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
                    "midpoints": [ 691.6428571428571, 356.7182539682541, 515.75, 356.7182539682541 ],
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
                    "midpoints": [ 750.5714285714286, 356.7182539682541, 515.75, 356.7182539682541 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 1 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "order": 0,
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
                    "midpoints": [ 826.5714285714286, 356.9199146609459, 515.75, 356.9199146609459 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 515.75, 527.946428571428, 36.285714285714285, 527.946428571428 ],
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
                    "midpoints": [ 571.1071428571428, 357.37513950892867, 515.75, 357.37513950892867 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-6", 0 ]
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
                    "midpoints": [ 632.7142857142857, 356.7182539682541, 515.75, 356.7182539682541 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 567.5357142857142, 452.7678571428572, 515.75, 452.7678571428572 ],
                    "source": [ "obj-9", 0 ]
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
                    "destination": [ "obj-sel-L", 2 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "midpoints": [ 36.285714285714285, 593.6428571428571, 322.8928571428571, 593.6428571428571 ],
                    "order": 0,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-gen", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 3 ],
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 1 ],
                    "order": 0,
                    "source": [ "obj-sel-L", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "order": 1,
                    "source": [ "obj-sel-L", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 4 ],
                    "source": [ "obj-sig-note", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.gain~", "live.gain~", 0 ],
            "obj-13": [ "midiornot", "midiornot", 0 ],
            "obj-16": [ "live.menu", "live.menu", 0 ],
            "obj-17": [ "mix", "mix", 0 ],
            "obj-19": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-20": [ "live.menu[1]", "live.menu", 0 ],
            "obj-24": [ "ratio", "ratio", 0 ],
            "obj-26": [ "index", "index", 0 ],
            "obj-32": [ "feedback", "feedback", 0 ],
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