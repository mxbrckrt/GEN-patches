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
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 43.0, 134.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 56.0, 496.0, 47.0 ],
                    "text": "2 models of saturations blended in a delay and unison\nDual-Stage Distortion, 24dB Moog Ladder & Recursive Delay"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 7.0, 177.0, 47.0 ],
                    "text": "volt drama"
                }
            },
            {
                "box": {
                    "attr": "gainout",
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 442.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "clipheight": 97.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u704008411",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-19",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 43.0, 175.0, 255.0, 98.0 ],
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
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 116.0, 454.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 546.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 116.0, 488.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-2", "attrui", "attr", "mix_global", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "shape", 5, "obj-3", "attrui", "float", 0.5, 5, "obj-4", "attrui", "attr", "time", 5, "obj-4", "attrui", "float", 250.0, 5, "obj-5", "attrui", "attr", "cutoff", 5, "obj-5", "attrui", "float", 20000.0, 5, "obj-6", "attrui", "attr", "feedback", 5, "obj-6", "attrui", "float", 0.35, 5, "obj-7", "attrui", "attr", "spread", 5, "obj-7", "attrui", "float", 10.0, 5, "obj-13", "attrui", "attr", "drive", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-15", "attrui", "attr", "uni_mix", 5, "obj-15", "attrui", "float", 50.0, 5, "obj-16", "attrui", "attr", "uni_detune", 5, "obj-16", "attrui", "float", 30.0, 5, "obj-17", "attrui", "attr", "uni_width", 5, "obj-17", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "gainout", 5, "obj-22", "attrui", "float", -9.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-2", "attrui", "attr", "mix_global", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "shape", 5, "obj-3", "attrui", "float", 1.0, 5, "obj-4", "attrui", "attr", "time", 5, "obj-4", "attrui", "float", 1.0, 5, "obj-5", "attrui", "attr", "cutoff", 5, "obj-5", "attrui", "float", 20000.0, 5, "obj-6", "attrui", "attr", "feedback", 5, "obj-6", "attrui", "float", 0.4900000000000001, 5, "obj-7", "attrui", "attr", "spread", 5, "obj-7", "attrui", "float", 0.15000000000000002, 5, "obj-13", "attrui", "attr", "drive", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-15", "attrui", "attr", "uni_mix", 5, "obj-15", "attrui", "float", 30.0, 5, "obj-16", "attrui", "attr", "uni_detune", 5, "obj-16", "attrui", "float", 30.0, 5, "obj-17", "attrui", "attr", "uni_width", 5, "obj-17", "attrui", "float", 100.0, 5, "obj-22", "attrui", "attr", "gainout", 5, "obj-22", "attrui", "float", -9.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-2", "attrui", "attr", "mix_global", 5, "obj-2", "attrui", "float", 60.0, 5, "obj-3", "attrui", "attr", "shape", 5, "obj-3", "attrui", "float", 0.30000000000000004, 5, "obj-4", "attrui", "attr", "time", 5, "obj-4", "attrui", "float", 500.0, 5, "obj-5", "attrui", "attr", "cutoff", 5, "obj-5", "attrui", "float", 6000.0, 5, "obj-6", "attrui", "attr", "feedback", 5, "obj-6", "attrui", "float", 0.35, 5, "obj-7", "attrui", "attr", "spread", 5, "obj-7", "attrui", "float", 1.0, 5, "obj-13", "attrui", "attr", "drive", 5, "obj-13", "attrui", "float", 1.0, 5, "obj-15", "attrui", "attr", "uni_mix", 5, "obj-15", "attrui", "float", 0.0, 5, "obj-16", "attrui", "attr", "uni_detune", 5, "obj-16", "attrui", "float", 100.0, 5, "obj-17", "attrui", "attr", "uni_width", 5, "obj-17", "attrui", "float", 25.0, 5, "obj-22", "attrui", "attr", "gainout", 5, "obj-22", "attrui", "float", -9.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "uni_width",
                    "bgcolor": [ 0.44313725490196076, 0.43529411764705883, 0.22745098039215686, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 397.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "uni_detune",
                    "bgcolor": [ 0.44313725490196076, 0.43529411764705883, 0.22745098039215686, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 374.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "uni_mix",
                    "bgcolor": [ 0.44313725490196076, 0.43529411764705883, 0.22745098039215686, 1.0 ],
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 350.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "bgcolor": [ 0.5372549019607843, 0.3568627450980392, 0.3568627450980392, 1.0 ],
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 175.0, 150.0, 22.0 ]
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
                    "patching_rect": [ 43.0, 392.0, 48.0, 136.0 ],
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
                    "attr": "spread",
                    "bgcolor": [ 0.38823529411764707, 0.4627450980392157, 0.3254901960784314, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 311.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "feedback",
                    "bgcolor": [ 0.38823529411764707, 0.4627450980392157, 0.3254901960784314, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 287.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "cutoff",
                    "bgcolor": [ 0.38823529411764707, 0.4627450980392157, 0.3254901960784314, 1.0 ],
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 262.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "time",
                    "bgcolor": [ 0.38823529411764707, 0.4627450980392157, 0.3254901960784314, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 237.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "shape",
                    "bgcolor": [ 0.5372549019607843, 0.3568627450980392, 0.3568627450980392, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 199.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mix_global",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 337.0, 134.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 43.0, 322.0, 131.0, 22.0 ],
                    "text": "gen~ @gen volt-drama"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-1", 0 ]
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
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-12", 0 ]
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
                    "hidden": 1,
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
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
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
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
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
                    "source": [ "obj-22", 0 ]
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
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10": [ "live.gain~", "live.gain~", 0 ],
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