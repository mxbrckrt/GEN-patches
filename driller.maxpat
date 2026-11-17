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
        "openrect": [ 50.0, 50.0, 740.0, 800.0 ],
        "openrectmode": 0,
        "subpatcher_template": "maxb-default-template",
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 21.0, 725.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 162.0, 685.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 162.0, 717.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-80", "attrui", "attr", "degrade_prob", 5, "obj-80", "attrui", "float", 60.0, 5, "obj-79", "attrui", "attr", "degrade", 5, "obj-79", "attrui", "float", 30.0, 5, "obj-78", "attrui", "attr", "roll_filter", 5, "obj-78", "attrui", "float", 20.0, 5, "obj-77", "attrui", "attr", "pan_spread", 5, "obj-77", "attrui", "float", 100.0, 5, "obj-76", "attrui", "attr", "vol6", 5, "obj-76", "attrui", "float", 0.65, 5, "obj-75", "attrui", "attr", "vol5", 5, "obj-75", "attrui", "float", 0.7, 5, "obj-74", "attrui", "attr", "vol4", 5, "obj-74", "attrui", "float", 0.7, 5, "obj-73", "attrui", "attr", "vol3", 5, "obj-73", "attrui", "float", 0.8, 5, "obj-72", "attrui", "attr", "vol2", 5, "obj-72", "attrui", "float", 0.8, 5, "obj-71", "attrui", "attr", "vol1", 5, "obj-71", "attrui", "float", 1.0, 5, "obj-20", "live.menu", "float", 0.0, 5, "obj-2", "attrui", "attr", "maindelay", 5, "obj-2", "attrui", "float", 600.0, 5, "obj-12", "attrui", "attr", "div2", 5, "obj-12", "attrui", "float", 2.0, 5, "obj-31", "attrui", "attr", "div3", 5, "obj-31", "attrui", "float", 4.0, 5, "obj-32", "attrui", "attr", "div4", 5, "obj-32", "attrui", "float", 8.0, 5, "obj-43", "attrui", "attr", "div5", 5, "obj-43", "attrui", "float", 10.0, 5, "obj-41", "attrui", "attr", "div6", 5, "obj-41", "attrui", "float", 12.0, 5, "obj-39", "attrui", "attr", "probability", 5, "obj-39", "attrui", "float", 100.0, 5, "obj-58", "attrui", "attr", "mute_prob", 5, "obj-58", "attrui", "float", 20.0, 5, "obj-57", "attrui", "attr", "feedback", 5, "obj-57", "attrui", "float", 10.0, 5, "obj-56", "attrui", "attr", "stereo_spread", 5, "obj-56", "attrui", "float", 30.0, 5, "obj-55", "attrui", "attr", "mode", 5, "obj-55", "attrui", "float", 0.0, 5, "obj-49", "attrui", "attr", "mix", 5, "obj-49", "attrui", "float", 100.0, 6, "obj-61", "number~", "list", 0.0, 0.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-80", "attrui", "attr", "degrade_prob", 5, "obj-80", "attrui", "float", 20.0, 5, "obj-79", "attrui", "attr", "degrade", 5, "obj-79", "attrui", "float", 61.0, 5, "obj-78", "attrui", "attr", "roll_filter", 5, "obj-78", "attrui", "float", 80.0, 5, "obj-77", "attrui", "attr", "pan_spread", 5, "obj-77", "attrui", "float", 100.0, 5, "obj-76", "attrui", "attr", "vol6", 5, "obj-76", "attrui", "float", 0.65, 5, "obj-75", "attrui", "attr", "vol5", 5, "obj-75", "attrui", "float", 0.7, 5, "obj-74", "attrui", "attr", "vol4", 5, "obj-74", "attrui", "float", 0.7, 5, "obj-73", "attrui", "attr", "vol3", 5, "obj-73", "attrui", "float", 0.8, 5, "obj-72", "attrui", "attr", "vol2", 5, "obj-72", "attrui", "float", 0.8, 5, "obj-71", "attrui", "attr", "vol1", 5, "obj-71", "attrui", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-2", "attrui", "attr", "maindelay", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-12", "attrui", "attr", "div2", 5, "obj-12", "attrui", "float", 1.1, 5, "obj-31", "attrui", "attr", "div3", 5, "obj-31", "attrui", "float", 1.2, 5, "obj-32", "attrui", "attr", "div4", 5, "obj-32", "attrui", "float", 1.3, 5, "obj-43", "attrui", "attr", "div5", 5, "obj-43", "attrui", "float", 1.4, 5, "obj-41", "attrui", "attr", "div6", 5, "obj-41", "attrui", "float", 1.5, 5, "obj-39", "attrui", "attr", "probability", 5, "obj-39", "attrui", "float", 100.0, 5, "obj-58", "attrui", "attr", "mute_prob", 5, "obj-58", "attrui", "float", 35.0, 5, "obj-57", "attrui", "attr", "feedback", 5, "obj-57", "attrui", "float", 50.0, 5, "obj-56", "attrui", "attr", "stereo_spread", 5, "obj-56", "attrui", "float", 30.0, 5, "obj-55", "attrui", "attr", "mode", 5, "obj-55", "attrui", "float", 1.0, 5, "obj-49", "attrui", "attr", "mix", 5, "obj-49", "attrui", "float", 100.0, 6, "obj-61", "number~", "list", 0.0, 0.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-80", "attrui", "attr", "degrade_prob", 5, "obj-80", "attrui", "float", 80.0, 5, "obj-79", "attrui", "attr", "degrade", 5, "obj-79", "attrui", "float", 60.0, 5, "obj-78", "attrui", "attr", "roll_filter", 5, "obj-78", "attrui", "float", 20.0, 5, "obj-77", "attrui", "attr", "pan_spread", 5, "obj-77", "attrui", "float", 100.0, 5, "obj-76", "attrui", "attr", "vol6", 5, "obj-76", "attrui", "float", 1.0, 5, "obj-75", "attrui", "attr", "vol5", 5, "obj-75", "attrui", "float", 1.0, 5, "obj-74", "attrui", "attr", "vol4", 5, "obj-74", "attrui", "float", 1.0, 5, "obj-73", "attrui", "attr", "vol3", 5, "obj-73", "attrui", "float", 1.0, 5, "obj-72", "attrui", "attr", "vol2", 5, "obj-72", "attrui", "float", 1.0, 5, "obj-71", "attrui", "attr", "vol1", 5, "obj-71", "attrui", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-2", "attrui", "attr", "maindelay", 5, "obj-2", "attrui", "float", 30.0, 5, "obj-12", "attrui", "attr", "div2", 5, "obj-12", "attrui", "float", 1.1, 5, "obj-31", "attrui", "attr", "div3", 5, "obj-31", "attrui", "float", 1.2, 5, "obj-32", "attrui", "attr", "div4", 5, "obj-32", "attrui", "float", 1.3, 5, "obj-43", "attrui", "attr", "div5", 5, "obj-43", "attrui", "float", 1.4, 5, "obj-41", "attrui", "attr", "div6", 5, "obj-41", "attrui", "float", 1.5, 5, "obj-39", "attrui", "attr", "probability", 5, "obj-39", "attrui", "float", 100.0, 5, "obj-58", "attrui", "attr", "mute_prob", 5, "obj-58", "attrui", "float", 30.0, 5, "obj-57", "attrui", "attr", "feedback", 5, "obj-57", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "stereo_spread", 5, "obj-56", "attrui", "float", 100.0, 5, "obj-55", "attrui", "attr", "mode", 5, "obj-55", "attrui", "float", 1.0, 5, "obj-49", "attrui", "attr", "mix", 5, "obj-49", "attrui", "float", 100.0, 6, "obj-61", "number~", "list", 0.0, 0.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-80", "attrui", "attr", "degrade_prob", 5, "obj-80", "attrui", "float", 60.0, 5, "obj-79", "attrui", "attr", "degrade", 5, "obj-79", "attrui", "float", 55.0, 5, "obj-78", "attrui", "attr", "roll_filter", 5, "obj-78", "attrui", "float", 100.0, 5, "obj-77", "attrui", "attr", "pan_spread", 5, "obj-77", "attrui", "float", 100.0, 5, "obj-76", "attrui", "attr", "vol6", 5, "obj-76", "attrui", "float", 1.0, 5, "obj-75", "attrui", "attr", "vol5", 5, "obj-75", "attrui", "float", 1.0, 5, "obj-74", "attrui", "attr", "vol4", 5, "obj-74", "attrui", "float", 1.0, 5, "obj-73", "attrui", "attr", "vol3", 5, "obj-73", "attrui", "float", 1.0, 5, "obj-72", "attrui", "attr", "vol2", 5, "obj-72", "attrui", "float", 1.0, 5, "obj-71", "attrui", "attr", "vol1", 5, "obj-71", "attrui", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-2", "attrui", "attr", "maindelay", 5, "obj-2", "attrui", "float", 85.0, 5, "obj-12", "attrui", "attr", "div2", 5, "obj-12", "attrui", "float", 1.1, 5, "obj-31", "attrui", "attr", "div3", 5, "obj-31", "attrui", "float", 1.2, 5, "obj-32", "attrui", "attr", "div4", 5, "obj-32", "attrui", "float", 1.3, 5, "obj-43", "attrui", "attr", "div5", 5, "obj-43", "attrui", "float", 1.4, 5, "obj-41", "attrui", "attr", "div6", 5, "obj-41", "attrui", "float", 1.5, 5, "obj-39", "attrui", "attr", "probability", 5, "obj-39", "attrui", "float", 100.0, 5, "obj-58", "attrui", "attr", "mute_prob", 5, "obj-58", "attrui", "float", 65.0, 5, "obj-57", "attrui", "attr", "feedback", 5, "obj-57", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "stereo_spread", 5, "obj-56", "attrui", "float", 100.0, 5, "obj-55", "attrui", "attr", "mode", 5, "obj-55", "attrui", "float", 1.0, 5, "obj-49", "attrui", "attr", "mix", 5, "obj-49", "attrui", "float", 70.0, 6, "obj-61", "number~", "list", 0.0, 0.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.0, 624.0, 94.0, 20.0 ],
                    "text": "active delay line"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 6.0, 102.0, 47.0 ],
                    "text": "Driller"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 16.0,
                    "id": "obj-62",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 72.0, 669.0, 114.0 ],
                    "text": "Dynamic stutter, glitch repeater, etc\nDivides a fundamental delay period (maindelay) into 5 integer or fractional subdivisions. On every cycle wrap of the fundamental clock, a stochastic Bernoulli trial selects between the normal delay tap, one of the rapid drill subdivisions, or momentary silence/dropout (mute_prob). Cubic Hermite interpolation and anti-click slew filters ensure smooth, click-free glitch transitions."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-61",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 132.0, 623.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-49",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 334.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "mode",
                    "id": "obj-55",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 386.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "stereo_spread",
                    "id": "obj-56",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 520.0, 314.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "feedback",
                    "id": "obj-57",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 362.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "mute_prob",
                    "id": "obj-58",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 338.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "probability",
                    "id": "obj-39",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 314.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "div6",
                    "id": "obj-41",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 544.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "div5",
                    "id": "obj-43",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 520.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 47.0, 207.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 47.0, 623.0, 62.0, 93.0 ],
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
                    "showname": 0,
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "attr": "div4",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 494.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "div3",
                    "id": "obj-31",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 470.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "div2",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 446.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "maindelay",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 422.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 47.0, 585.0, 104.0, 22.0 ],
                    "text": "gen~ @gen driller",
                    "varname": "driller"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bordercolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 12.0,
                    "hltcolor": [ 0.364705882352941, 0.619607843137255, 0.741176470588235, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 47.0, 364.0, 65.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "hltcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "overlay", "insert", "capture" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.menu[1]",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "textcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "tricolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "varname": "live.menu[1]"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 21.0, 769.0, 74.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "clipheight": 32.5,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "tabla-solo.wav",
                                "filename": "tabla-solo.wav",
                                "filekind": "audiofile",
                                "id": "u160003594",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u637004891",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-6",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 234.0, 337.0, 67.0 ],
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
                    "attr": "vol1",
                    "id": "obj-71",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 422.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol2",
                    "id": "obj-72",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 446.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol3",
                    "id": "obj-73",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 470.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol4",
                    "id": "obj-74",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 494.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol5",
                    "id": "obj-75",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 520.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol6",
                    "id": "obj-76",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 544.0, 180.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "pan_spread",
                    "id": "obj-77",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 520.0, 338.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "roll_filter",
                    "id": "obj-78",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 509.0, 422.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "degrade",
                    "id": "obj-79",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 509.0, 446.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            },
            {
                "box": {
                    "attr": "degrade_prob",
                    "id": "obj-80",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 509.0, 470.0, 180.0, 22.0 ],
                    "text_width": 130.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "source": [ "obj-40", 1 ]
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
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-40", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "hidden": 1,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-20": [ "live.menu[1]", "live.menu", 0 ],
            "obj-34": [ "live.gain~", "live.gain~", 0 ],
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
        "autosave": 0,
        "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
        "bgcolor": [ 0.274509803921569, 0.274509803921569, 0.274509803921569, 1.0 ],
        "editing_bgcolor": [ 0.274509803921569, 0.274509803921569, 0.274509803921569, 1.0 ]
    }
}