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
        "lefttoolbarpinned": 1,
        "toptoolbarpinned": 1,
        "righttoolbarpinned": 1,
        "bottomtoolbarpinned": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-9",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 55.0, 256.0, 67.0 ],
                    "text": "Digital delay and reverb loosely based on Clouds reverb (enhanced Dattoro)"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 303.0, 491.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 303.0, 526.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-26", "attrui", "attr", "del_vol", 5, "obj-26", "attrui", "float", -60.0, 5, "obj-25", "attrui", "attr", "del_time", 5, "obj-25", "attrui", "float", 0.9, 5, "obj-24", "attrui", "attr", "del_damp", 5, "obj-24", "attrui", "float", 0.0, 5, "obj-23", "attrui", "attr", "del_fb", 5, "obj-23", "attrui", "float", 97.0, 5, "obj-22", "attrui", "attr", "rev_vol", 5, "obj-22", "attrui", "float", -6.0, 5, "obj-21", "attrui", "attr", "rev_diff", 5, "obj-21", "attrui", "float", 100.0, 5, "obj-14", "attrui", "attr", "rev_damp", 5, "obj-14", "attrui", "float", 45.0, 5, "obj-2", "attrui", "attr", "rev_mod", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "del_to_rev", 5, "obj-3", "attrui", "float", 100.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", 6.0, 5, "obj-17", "attrui", "attr", "rev_size", 5, "obj-17", "attrui", "float", 99.0, 5, "obj-19", "attrui", "attr", "mix", 5, "obj-19", "attrui", "float", 100.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-26", "attrui", "attr", "del_vol", 5, "obj-26", "attrui", "float", -12.0, 5, "obj-25", "attrui", "attr", "del_time", 5, "obj-25", "attrui", "float", 2.0, 5, "obj-24", "attrui", "attr", "del_damp", 5, "obj-24", "attrui", "float", 0.0, 5, "obj-23", "attrui", "attr", "del_fb", 5, "obj-23", "attrui", "float", 95.0, 5, "obj-22", "attrui", "attr", "rev_vol", 5, "obj-22", "attrui", "float", -6.0, 5, "obj-21", "attrui", "attr", "rev_diff", 5, "obj-21", "attrui", "float", 100.0, 5, "obj-14", "attrui", "attr", "rev_damp", 5, "obj-14", "attrui", "float", 60.0, 5, "obj-2", "attrui", "attr", "rev_mod", 5, "obj-2", "attrui", "float", 15.0, 5, "obj-3", "attrui", "attr", "del_to_rev", 5, "obj-3", "attrui", "float", 40.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", 6.0, 5, "obj-17", "attrui", "attr", "rev_size", 5, "obj-17", "attrui", "float", 90.0, 5, "obj-19", "attrui", "attr", "mix", 5, "obj-19", "attrui", "float", 60.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-26", "attrui", "attr", "del_vol", 5, "obj-26", "attrui", "float", -3.0, 5, "obj-25", "attrui", "attr", "del_time", 5, "obj-25", "attrui", "float", 8.0, 5, "obj-24", "attrui", "attr", "del_damp", 5, "obj-24", "attrui", "float", 45.0, 5, "obj-23", "attrui", "attr", "del_fb", 5, "obj-23", "attrui", "float", 95.0, 5, "obj-22", "attrui", "attr", "rev_vol", 5, "obj-22", "attrui", "float", -12.0, 5, "obj-21", "attrui", "attr", "rev_diff", 5, "obj-21", "attrui", "float", 50.0, 5, "obj-14", "attrui", "attr", "rev_damp", 5, "obj-14", "attrui", "float", 60.0, 5, "obj-2", "attrui", "attr", "rev_mod", 5, "obj-2", "attrui", "float", 40.0, 5, "obj-3", "attrui", "attr", "del_to_rev", 5, "obj-3", "attrui", "float", 60.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", 10.0, 5, "obj-17", "attrui", "attr", "rev_size", 5, "obj-17", "attrui", "float", 95.0, 5, "obj-19", "attrui", "attr", "mix", 5, "obj-19", "attrui", "float", 60.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-26", "attrui", "attr", "del_vol", 5, "obj-26", "attrui", "float", -16.0, 5, "obj-25", "attrui", "attr", "del_time", 5, "obj-25", "attrui", "float", 65.0, 5, "obj-24", "attrui", "attr", "del_damp", 5, "obj-24", "attrui", "float", 20.0, 5, "obj-23", "attrui", "attr", "del_fb", 5, "obj-23", "attrui", "float", 85.0, 5, "obj-22", "attrui", "attr", "rev_vol", 5, "obj-22", "attrui", "float", -3.0, 5, "obj-21", "attrui", "attr", "rev_diff", 5, "obj-21", "attrui", "float", 100.0, 5, "obj-14", "attrui", "attr", "rev_damp", 5, "obj-14", "attrui", "float", 0.0, 5, "obj-2", "attrui", "attr", "rev_mod", 5, "obj-2", "attrui", "float", 30.0, 5, "obj-3", "attrui", "attr", "del_to_rev", 5, "obj-3", "attrui", "float", 80.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-11", "attrui", "attr", "gainout", 5, "obj-11", "attrui", "float", 6.0, 5, "obj-17", "attrui", "attr", "rev_size", 5, "obj-17", "attrui", "float", 80.0, 5, "obj-19", "attrui", "attr", "mix", 5, "obj-19", "attrui", "float", 70.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 158.0, 533.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 6.0, 191.0, 47.0 ],
                    "text": "Aether Drift"
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 16.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "rev_size",
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 317.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "gainout",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 355.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 72.0, 169.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 72.0, 202.0, 69.0, 22.0 ],
                    "text": "metro 3000"
                }
            },
            {
                "box": {
                    "attr": "del_to_rev",
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 178.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "rev_mod",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 291.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numleds": 20,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 247.0, 372.0, 25.806450843811035, 136.03227031230927 ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numleds": 20,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 219.0, 372.0, 25.806450843811035, 136.03227031230927 ]
                }
            },
            {
                "box": {
                    "attr": "rev_damp",
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 266.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "rev_diff",
                    "id": "obj-21",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 242.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "rev_vol",
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 216.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "del_fb",
                    "id": "obj-23",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 137.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "del_damp",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 112.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "del_time",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 87.0, 193.0, 22.0 ],
                    "text_width": 129.80487796664238
                }
            },
            {
                "box": {
                    "attr": "del_vol",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 62.0, 193.0, 22.0 ],
                    "text_width": 129.80487796664238
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
                    "patching_rect": [ 158.0, 372.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 72.0, 317.0, 132.0, 22.0 ],
                    "text": "gen~ @gen aether-drift"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 72.0, 232.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 72.0, 261.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "order": 1,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.gain~[1]", "live.gain~", 0 ],
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