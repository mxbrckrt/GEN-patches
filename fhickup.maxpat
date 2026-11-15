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
        "subpatcher_template": "maxb-default-template",
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 49.0, 545.0, 47.0 ],
                    "text": "Performs a sort of \"telephone\" effect. Filter (Lwpass<->Hpass) + Distort (overdive) + hickup a signal (brutal on/off amp modulation).",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 31.282376425230325,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 6.0, 146.0, 41.0 ],
                    "text": "Fhickup",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 147.0, 376.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "active1": [ 0.0, 0.584313725490196, 0.996078431372549, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 147.0, 420.0, 127.0, 53.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-105", "live.dial", "float", 50.0, 5, "obj-2", "live.dial", "float", 100.0, 5, "obj-12", "live.dial", "float", 1211.9815673828125, 5, "obj-5", "live.dial", "float", 71.6535415649414, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 12.897945404052734, 5, "obj-7", "live.dial", "float", 98.4251937866211 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-105", "live.dial", "float", 100.0, 5, "obj-2", "live.dial", "float", 100.0, 5, "obj-12", "live.dial", "float", 40.0, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 7.765350818634033, 5, "obj-7", "live.dial", "float", 100.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-105", "live.dial", "float", 0.0, 5, "obj-2", "live.dial", "float", 100.0, 5, "obj-12", "live.dial", "float", 2625.16650390625, 5, "obj-5", "live.dial", "float", 100.0, 5, "obj-21", "live.dial", "float", 9.0, 5, "obj-20", "live.dial", "float", 0.9089223146438599, 5, "obj-7", "live.dial", "float", 90.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-105", "live.dial", "float", 100.0, 5, "obj-2", "live.dial", "float", 100.0, 5, "obj-12", "live.dial", "float", 3576.79052734375, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 13.729281425476074, 5, "obj-7", "live.dial", "float", 100.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-105", "live.dial", "float", 100.0, 5, "obj-2", "live.dial", "float", 68.50393676757812, 5, "obj-12", "live.dial", "float", 790.9557495117188, 5, "obj-5", "live.dial", "float", 32.28346633911133, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 2.12579345703125, 5, "obj-7", "live.dial", "float", 100.0 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-2", "live.dial", "float", 68.50393676757812, 5, "obj-12", "live.dial", "float", 790.9557495117188, 5, "obj-5", "live.dial", "float", 32.28346633911133, 5, "obj-21", "live.dial", "float", 7.0, 5, "obj-20", "live.dial", "float", 39.34519958496094, 5, "obj-7", "live.dial", "float", 100.0 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-105", "live.dial", "float", 100.0, 5, "obj-2", "live.dial", "float", 91.33858489990234, 5, "obj-12", "live.dial", "float", 1015.4693603515625, 5, "obj-5", "live.dial", "float", 32.28346633911133, 5, "obj-21", "live.dial", "float", 7.0, 5, "obj-20", "live.dial", "float", 10.72421646118164, 5, "obj-7", "live.dial", "float", 100.0 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-105", "live.dial", "float", 78.74015808105469, 5, "obj-2", "live.dial", "float", 91.33858489990234, 5, "obj-12", "live.dial", "float", 308.7215270996094, 5, "obj-5", "live.dial", "float", 100.0, 5, "obj-21", "live.dial", "float", 4.0, 5, "obj-20", "live.dial", "float", 1.791704773902893, 5, "obj-7", "live.dial", "float", 30.708662033081055 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 290.0, 65.0, 22.0 ],
                    "text": "hickmix $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-7",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 430.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "amount",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "live.dial[3]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "HickMx",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 348.0, 290.0, 70.0, 22.0 ],
                    "text": "hickclick $1"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 290.0, 67.0, 22.0 ],
                    "text": "hickfreq $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-20",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 268.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.333333,
                            "parameter_initial": [ 5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "live.dial[4]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "HickFrq",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-21",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 348.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "amount",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "live.dial[5]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "HickClik",
                            "parameter_type": 1,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "live.dial[5]"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 38.0, 404.0, 48.0, 136.0 ],
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
                    "clipheight": 56.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u795000759",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-13",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.0, 115.0, 279.0, 57.0 ],
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
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 54.0, 290.0, 51.0, 22.0 ],
                    "text": "drive $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-5",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 54.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "amount",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "live.dial[2]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Drive",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 536.0, 291.0, 44.0, 22.0 ],
                    "text": "mix $1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 110.0, 290.0, 46.0, 22.0 ],
                    "text": "freq $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-12",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 110.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.333333,
                            "parameter_initial": [ 2000.0000000000002 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "live.dial[1]",
                            "parameter_mmax": 18000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Freq",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 85.0, 512.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 38.0, 575.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 0.0 ],
                    "dialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-2",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 536.0, 231.0, 44.0, 48.0 ],
                    "prototypename": "amount",
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "mix",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "mix"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 38.0, 343.0, 118.0, 22.0 ],
                    "text": "gen~ @gen fhickup",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 162.0, 231.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "filter_morph",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "morph",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "filter_morph"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 162.0, 290.0, 62.65822784810126, 35.0 ],
                    "text": "filter_morph $1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 277.5, 328.717791411043, 47.5, 328.717791411043 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 171.5, 328.6155099693251, 47.5, 328.6155099693251 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "hidden": 1,
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 119.5, 328.717791411043, 47.5, 328.717791411043 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 545.5, 329.0245398773004, 47.5, 329.0245398773004 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "order": 0,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-23", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-23", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-23", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 63.5, 328.717791411043, 47.5, 328.717791411043 ],
                    "source": [ "obj-3", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 439.5, 328.71779141104287, 47.5, 328.71779141104287 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 357.5, 328.717791411043, 47.5, 328.717791411043 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-105": [ "filter_morph", "morph", 0 ],
            "obj-12": [ "live.dial[1]", "Freq", 0 ],
            "obj-17": [ "live.gain~", "live.gain~", 0 ],
            "obj-2": [ "mix", "mix", 0 ],
            "obj-20": [ "live.dial[4]", "HickFrq", 0 ],
            "obj-21": [ "live.dial[5]", "HickClik", 0 ],
            "obj-5": [ "live.dial[2]", "Drive", 0 ],
            "obj-7": [ "live.dial[3]", "HickMx", 0 ],
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
        "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
        "editing_bgcolor": [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 1.0 ]
    }
}