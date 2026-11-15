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
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 141.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "attr": "r_tilt",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-38",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 515.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_speed",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-37",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 563.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_depth",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-36",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 539.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_absorb",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-35",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 491.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_decay",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-34",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 467.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_size",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-29",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 443.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "r_mix",
                    "bgcolor": [ 0.11764705882352941, 0.3333333333333333, 0.20392156862745098, 1.0 ],
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 419.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 423.0, 300.0, 80.0, 22.0 ],
                    "text": "scale 0 2 0. 1"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 423.0, 269.0, 141.76287972927094, 23.7724586725235 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "cos", "smooth", "square" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "attr": "g_prob",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-31",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 215.0, 150.0, 22.0 ]
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
                    "patching_rect": [ 415.0, 112.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "attr": "freeze",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-30",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 415.0, 141.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "gainout",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 384.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 167.0, 400.0, 21.0, 108.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_window",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 287.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_std_pos",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 415.0, 239.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_std_density",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 415.0, 191.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_std_size",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 415.0, 167.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "clipheight": 57.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "drumLoop.aif",
                                "filename": "drumLoop.aif",
                                "filekind": "audiofile",
                                "id": "u228009932",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-7",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 179.0, 195.0, 58.0 ],
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
                    "attr": "g_regen",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 325.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_density",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 191.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_skew",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 263.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 36.0, 410.0, 47.0, 22.0 ],
                    "text": "clearall"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 68.0, 331.0, 27.0 ],
                    "text": "granulator with a twist and a FDN reverb"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 8.0, 245.0, 47.0 ],
                    "text": "Aether Particle"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 36.0, 434.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 190.0, 549.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 36.0, 468.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-2", "attrui", "attr", "g_mix", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "g_size", 5, "obj-3", "attrui", "float", 40.0, 5, "obj-5", "attrui", "attr", "g_crush", 5, "obj-5", "attrui", "float", 0.0, 5, "obj-6", "attrui", "attr", "g_pos", 5, "obj-6", "attrui", "float", 0.0, 5, "obj-13", "attrui", "attr", "g_pitch", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-23", "attrui", "attr", "g_skew", 5, "obj-23", "attrui", "float", 99.0, 5, "obj-22", "attrui", "attr", "g_density", 5, "obj-22", "attrui", "float", 60.0, 5, "obj-20", "attrui", "attr", "g_regen", 5, "obj-20", "attrui", "float", 71.0, 5, "obj-16", "attrui", "attr", "g_std_size", 5, "obj-16", "attrui", "float", 0.0, 5, "obj-19", "attrui", "attr", "g_std_density", 5, "obj-19", "attrui", "float", 0.0, 5, "obj-24", "attrui", "attr", "g_std_pos", 5, "obj-24", "attrui", "float", 100.0, 5, "obj-27", "attrui", "attr", "g_window", 5, "obj-27", "attrui", "float", 0.5000000000000001, 5, "obj-21", "attrui", "attr", "gainout", 5, "obj-21", "attrui", "float", 0.0, 5, "obj-30", "attrui", "attr", "freeze", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-28", "toggle", "int", 0, 5, "obj-31", "attrui", "attr", "g_prob", 5, "obj-31", "attrui", "float", 100.0, 5, "obj-32", "live.tab", "float", 0.0, 5, "obj-25", "attrui", "attr", "r_mix", 5, "obj-25", "attrui", "float", 19.0, 5, "obj-29", "attrui", "attr", "r_size", 5, "obj-29", "attrui", "float", 81.0, 5, "obj-34", "attrui", "attr", "r_decay", 5, "obj-34", "attrui", "float", 87.0, 5, "obj-35", "attrui", "attr", "r_absorb", 5, "obj-35", "attrui", "float", 8.0, 5, "obj-36", "attrui", "attr", "r_depth", 5, "obj-36", "attrui", "float", 3.0, 5, "obj-37", "attrui", "attr", "r_speed", 5, "obj-37", "attrui", "float", 0.1, 5, "obj-38", "attrui", "attr", "r_tilt", 5, "obj-38", "attrui", "float", 0.2 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-2", "attrui", "attr", "g_mix", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "g_size", 5, "obj-3", "attrui", "float", 300.0, 5, "obj-5", "attrui", "attr", "g_crush", 5, "obj-5", "attrui", "float", 0.0, 5, "obj-6", "attrui", "attr", "g_pos", 5, "obj-6", "attrui", "float", 10.0, 5, "obj-13", "attrui", "attr", "g_pitch", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-23", "attrui", "attr", "g_skew", 5, "obj-23", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "g_density", 5, "obj-22", "attrui", "float", 10.0, 5, "obj-20", "attrui", "attr", "g_regen", 5, "obj-20", "attrui", "float", 60.0, 5, "obj-16", "attrui", "attr", "g_std_size", 5, "obj-16", "attrui", "float", 0.0, 5, "obj-19", "attrui", "attr", "g_std_density", 5, "obj-19", "attrui", "float", 5.0, 5, "obj-24", "attrui", "attr", "g_std_pos", 5, "obj-24", "attrui", "float", 20.0, 5, "obj-27", "attrui", "attr", "g_window", 5, "obj-27", "attrui", "float", 0.0, 5, "obj-21", "attrui", "attr", "gainout", 5, "obj-21", "attrui", "float", 0.0, 5, "obj-30", "attrui", "attr", "freeze", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-28", "toggle", "int", 0, 5, "obj-31", "attrui", "attr", "g_prob", 5, "obj-31", "attrui", "float", 40.0, 5, "obj-32", "live.tab", "float", 0.0, 5, "obj-25", "attrui", "attr", "r_mix", 5, "obj-25", "attrui", "float", 25.0, 5, "obj-29", "attrui", "attr", "r_size", 5, "obj-29", "attrui", "float", 51.0, 5, "obj-34", "attrui", "attr", "r_decay", 5, "obj-34", "attrui", "float", 94.0, 5, "obj-35", "attrui", "attr", "r_absorb", 5, "obj-35", "attrui", "float", 0.0, 5, "obj-36", "attrui", "attr", "r_depth", 5, "obj-36", "attrui", "float", 4.0, 5, "obj-37", "attrui", "attr", "r_speed", 5, "obj-37", "attrui", "float", 0.30000000000000004, 5, "obj-38", "attrui", "attr", "r_tilt", 5, "obj-38", "attrui", "float", 0.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-2", "attrui", "attr", "g_mix", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "g_size", 5, "obj-3", "attrui", "float", 300.0, 5, "obj-5", "attrui", "attr", "g_crush", 5, "obj-5", "attrui", "float", 0.0, 5, "obj-6", "attrui", "attr", "g_pos", 5, "obj-6", "attrui", "float", 10.0, 5, "obj-13", "attrui", "attr", "g_pitch", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-23", "attrui", "attr", "g_skew", 5, "obj-23", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "g_density", 5, "obj-22", "attrui", "float", 5.0, 5, "obj-20", "attrui", "attr", "g_regen", 5, "obj-20", "attrui", "float", 60.0, 5, "obj-16", "attrui", "attr", "g_std_size", 5, "obj-16", "attrui", "float", 10.0, 5, "obj-19", "attrui", "attr", "g_std_density", 5, "obj-19", "attrui", "float", 5.0, 5, "obj-24", "attrui", "attr", "g_std_pos", 5, "obj-24", "attrui", "float", 100.0, 5, "obj-27", "attrui", "attr", "g_window", 5, "obj-27", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "gainout", 5, "obj-21", "attrui", "float", 0.0, 5, "obj-30", "attrui", "attr", "freeze", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-28", "toggle", "int", 0, 5, "obj-31", "attrui", "attr", "g_prob", 5, "obj-31", "attrui", "float", 10.0, 5, "obj-32", "live.tab", "float", 2.0, 5, "obj-25", "attrui", "attr", "r_mix", 5, "obj-25", "attrui", "float", 40.0, 5, "obj-29", "attrui", "attr", "r_size", 5, "obj-29", "attrui", "float", 100.0, 5, "obj-34", "attrui", "attr", "r_decay", 5, "obj-34", "attrui", "float", 94.0, 5, "obj-35", "attrui", "attr", "r_absorb", 5, "obj-35", "attrui", "float", 0.0, 5, "obj-36", "attrui", "attr", "r_depth", 5, "obj-36", "attrui", "float", 0.0, 5, "obj-37", "attrui", "attr", "r_speed", 5, "obj-37", "attrui", "float", 0.30000000000000004, 5, "obj-38", "attrui", "attr", "r_tilt", 5, "obj-38", "attrui", "float", 0.45 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-2", "attrui", "attr", "g_mix", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "g_size", 5, "obj-3", "attrui", "float", 40.0, 5, "obj-5", "attrui", "attr", "g_crush", 5, "obj-5", "attrui", "float", 100.0, 5, "obj-6", "attrui", "attr", "g_pos", 5, "obj-6", "attrui", "float", 10.0, 5, "obj-13", "attrui", "attr", "g_pitch", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-23", "attrui", "attr", "g_skew", 5, "obj-23", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "g_density", 5, "obj-22", "attrui", "float", 10.0, 5, "obj-20", "attrui", "attr", "g_regen", 5, "obj-20", "attrui", "float", 0.0, 5, "obj-16", "attrui", "attr", "g_std_size", 5, "obj-16", "attrui", "float", 0.0, 5, "obj-19", "attrui", "attr", "g_std_density", 5, "obj-19", "attrui", "float", 5.0, 5, "obj-24", "attrui", "attr", "g_std_pos", 5, "obj-24", "attrui", "float", 100.0, 5, "obj-27", "attrui", "attr", "g_window", 5, "obj-27", "attrui", "float", 0.0, 5, "obj-21", "attrui", "attr", "gainout", 5, "obj-21", "attrui", "float", 0.0, 5, "obj-30", "attrui", "attr", "freeze", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-28", "toggle", "int", 0, 5, "obj-31", "attrui", "attr", "g_prob", 5, "obj-31", "attrui", "float", 40.0, 5, "obj-32", "live.tab", "float", 0.0, 5, "obj-25", "attrui", "attr", "r_mix", 5, "obj-25", "attrui", "float", 30.0, 5, "obj-29", "attrui", "attr", "r_size", 5, "obj-29", "attrui", "float", 10.0, 5, "obj-34", "attrui", "attr", "r_decay", 5, "obj-34", "attrui", "float", 99.0, 5, "obj-35", "attrui", "attr", "r_absorb", 5, "obj-35", "attrui", "float", 18.0, 5, "obj-36", "attrui", "attr", "r_depth", 5, "obj-36", "attrui", "float", 3.0, 5, "obj-37", "attrui", "attr", "r_speed", 5, "obj-37", "attrui", "float", 0.1, 5, "obj-38", "attrui", "attr", "r_tilt", 5, "obj-38", "attrui", "float", -0.10000000000000002 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-2", "attrui", "attr", "g_mix", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "g_size", 5, "obj-3", "attrui", "float", 500.0, 5, "obj-5", "attrui", "attr", "g_crush", 5, "obj-5", "attrui", "float", 10.0, 5, "obj-6", "attrui", "attr", "g_pos", 5, "obj-6", "attrui", "float", 10.0, 5, "obj-13", "attrui", "attr", "g_pitch", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-23", "attrui", "attr", "g_skew", 5, "obj-23", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "g_density", 5, "obj-22", "attrui", "float", 10.0, 5, "obj-20", "attrui", "attr", "g_regen", 5, "obj-20", "attrui", "float", 0.0, 5, "obj-16", "attrui", "attr", "g_std_size", 5, "obj-16", "attrui", "float", 80.0, 5, "obj-19", "attrui", "attr", "g_std_density", 5, "obj-19", "attrui", "float", 5.0, 5, "obj-24", "attrui", "attr", "g_std_pos", 5, "obj-24", "attrui", "float", 100.0, 5, "obj-27", "attrui", "attr", "g_window", 5, "obj-27", "attrui", "float", 0.5, 5, "obj-21", "attrui", "attr", "gainout", 5, "obj-21", "attrui", "float", 0.0, 5, "obj-30", "attrui", "attr", "freeze", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-28", "toggle", "int", 0, 5, "obj-31", "attrui", "attr", "g_prob", 5, "obj-31", "attrui", "float", 15.0, 5, "obj-32", "live.tab", "float", 1.0, 5, "obj-25", "attrui", "attr", "r_mix", 5, "obj-25", "attrui", "float", 20.0, 5, "obj-29", "attrui", "attr", "r_size", 5, "obj-29", "attrui", "float", 49.0, 5, "obj-34", "attrui", "attr", "r_decay", 5, "obj-34", "attrui", "float", 98.0, 5, "obj-35", "attrui", "attr", "r_absorb", 5, "obj-35", "attrui", "float", 0.0, 5, "obj-36", "attrui", "attr", "r_depth", 5, "obj-36", "attrui", "float", 3.0, 5, "obj-37", "attrui", "attr", "r_speed", 5, "obj-37", "attrui", "float", 0.1, 5, "obj-38", "attrui", "attr", "r_tilt", 5, "obj-38", "attrui", "float", 0.2 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "g_pitch",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 141.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 144.0, 400.0, 21.0, 108.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 190.0, 395.0, 48.0, 136.0 ],
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
                    "attr": "g_pos",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 239.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_crush",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 350.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_size",
                    "bgcolor": [ 0.09803921568627451, 0.12941176470588237, 0.2784313725490196, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 167.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "g_mix",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 263.0, 113.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 24.0, 316.0, 151.0, 22.0 ],
                    "text": "gen~ @gen aether-particle"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-11", 0 ]
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
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-15", 0 ]
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
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
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
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
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
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
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10": [ "live.gain~", "live.gain~", 0 ],
            "obj-32": [ "live.tab", "live.tab", 0 ],
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