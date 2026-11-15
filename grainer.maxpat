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
        "gridsize": [ 8.0, 8.0 ],
        "boxanimatetime": 20,
        "style": "default",
        "subpatcher_template": "maxb_default",
        "boxes": [
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 458.0, 437.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 458.0, 399.0, 55.0, 22.0 ],
                    "text": "edge~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 133.0, 458.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-17",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 56.0, 545.0, 67.0 ],
                    "text": "Amp modulation grain generator based on a threshold detection. Probability sets the amount of grain to pass VS the original sound. Can also act as a simple envelope follower and/or attack detection.",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 31.282376425230325,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 6.0, 113.0, 41.0 ],
                    "text": "Grainer",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 133.0, 492.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-4", "playlist~", "preset_count", 1, 7, "obj-4", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-4", "playlist~", "preset_clipstate", 1, "absolutepath", "drumLoop.aif", 7, "obj-4", "playlist~", "preset_clipstate", 1, "filename", "drumLoop.aif", 7, "obj-4", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-4", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-4", "playlist~", "preset_clipstate", 1, "id", "u433010620", 7, "obj-4", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-4", "playlist~", "preset_execute", 5, "obj-5", "attrui", "attr", "gain", 5, "obj-5", "attrui", "float", 1.0, 5, "obj-6", "attrui", "attr", "slide_attack", 5, "obj-6", "attrui", "float", 0.0, 5, "obj-7", "attrui", "attr", "slide_decay", 5, "obj-7", "attrui", "float", 18.0, 5, "obj-8", "attrui", "attr", "thresh", 5, "obj-8", "attrui", "float", 20.0, 5, "obj-9", "attrui", "attr", "grain", 5, "obj-9", "attrui", "float", 100.0, 5, "obj-10", "attrui", "attr", "antibis", 5, "obj-10", "attrui", "float", 150.0, 5, "obj-22", "attrui", "attr", "proba", 5, "obj-22", "attrui", "float", 100.0, 5, "obj-14", "attrui", "attr", "mix", 5, "obj-14", "attrui", "float", 100.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 299.0, 347.0, 153.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bufsize": 152,
                    "id": "obj-12",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 397.0, 467.0, 94.0, 94.0 ],
                    "range": [ 0.0, 1.0 ]
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
                    "patching_rect": [ 64.0, 427.0, 48.0, 105.0 ],
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
                    "attr": "proba",
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 347.0, 153.0, 22.0 ]
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
                    "patching_rect": [ 38.0, 526.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bufsize": 152,
                    "id": "obj-33",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 261.0, 467.0, 94.0, 94.0 ],
                    "range": [ 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 561.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "attr": "antibis",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 314.0, 153.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "grain",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 290.0, 153.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "thresh",
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 266.0, 152.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "slide_decay",
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 242.0, 152.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "slide_attack",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 218.0, 152.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 194.0, 153.0, 22.0 ]
                }
            },
            {
                "box": {
                    "clipheight": 49.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "drumLoop.aif",
                                "filename": "drumLoop.aif",
                                "filekind": "audiofile",
                                "id": "u433010620",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-4",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 139.0, 413.66666666666674, 50.0 ],
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
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 64.0, 399.0, 315.0, 22.0 ],
                    "text": "gen~ @gen grainer",
                    "varname": "rnbo~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 2,
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
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-16", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-16", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2": [ "live.gain~", "live.gain~", 0 ],
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
        "default_bgcolor": [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
        "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
        "textcolor_inverse": [ 0.992157, 0.992157, 0.992157, 1.0 ],
        "editing_bgcolor": [ 0.34912109375, 0.34912109375, 0.34912109375, 1.0 ],
        "bgfillcolor_type": "color",
        "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
        "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
        "bgfillcolor_color": [ 0.113725490196078, 0.113725490196078, 0.113725490196078, 1.0 ]
    }
}