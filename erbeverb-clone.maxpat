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
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 56.0, 443.0, 47.0 ],
                    "text": "Continuous-Topology Reverb & Multi-Order Dispersion\nLoosely inspired by Tom Erb/Makenoise's Erbverb"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 329.0, 491.0, 47.0, 22.0 ],
                    "text": "clearall"
                }
            },
            {
                "box": {
                    "attr": "tilt",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 397.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "speed",
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 232.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "depth",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 256.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "absorb",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 370.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 234.0, 494.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 234.0, 529.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-12", "live.gain~", "float", 2.0063316822052, 5, "obj-26", "attrui", "attr", "predelay", 5, "obj-26", "attrui", "float", 10.0, 5, "obj-25", "attrui", "attr", "size", 5, "obj-25", "attrui", "float", 100.0, 5, "obj-24", "attrui", "attr", "decay", 5, "obj-24", "attrui", "float", 93.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-19", "attrui", "attr", "mix_rev", 5, "obj-19", "attrui", "float", 100.0, 5, "obj-9", "attrui", "attr", "absorb", 5, "obj-9", "attrui", "float", 20.0, 5, "obj-11", "attrui", "attr", "depth", 5, "obj-11", "attrui", "float", 5.0, 5, "obj-14", "attrui", "attr", "speed", 5, "obj-14", "attrui", "float", 1.0, 5, "obj-15", "attrui", "attr", "tilt", 5, "obj-15", "attrui", "float", 0.25000000000000006 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-12", "live.gain~", "float", -0.035392481833696365, 5, "obj-26", "attrui", "attr", "predelay", 5, "obj-26", "attrui", "float", 5.0, 5, "obj-25", "attrui", "attr", "size", 5, "obj-25", "attrui", "float", 14.0, 5, "obj-24", "attrui", "attr", "decay", 5, "obj-24", "attrui", "float", 99.5, 5, "obj-10", "toggle", "int", 0, 5, "obj-19", "attrui", "attr", "mix_rev", 5, "obj-19", "attrui", "float", 100.0, 5, "obj-9", "attrui", "attr", "absorb", 5, "obj-9", "attrui", "float", 10.0, 5, "obj-11", "attrui", "attr", "depth", 5, "obj-11", "attrui", "float", 8.0, 5, "obj-14", "attrui", "attr", "speed", 5, "obj-14", "attrui", "float", 0.1, 5, "obj-15", "attrui", "attr", "tilt", 5, "obj-15", "attrui", "float", 0.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-12", "live.gain~", "float", -0.035392481833696365, 5, "obj-26", "attrui", "attr", "predelay", 5, "obj-26", "attrui", "float", 5.0, 5, "obj-25", "attrui", "attr", "size", 5, "obj-25", "attrui", "float", 75.0, 5, "obj-24", "attrui", "attr", "decay", 5, "obj-24", "attrui", "float", 95.7, 5, "obj-10", "toggle", "int", 0, 5, "obj-19", "attrui", "attr", "mix_rev", 5, "obj-19", "attrui", "float", 100.0, 5, "obj-9", "attrui", "attr", "absorb", 5, "obj-9", "attrui", "float", 5.0, 5, "obj-11", "attrui", "attr", "depth", 5, "obj-11", "attrui", "float", 11.0, 5, "obj-14", "attrui", "attr", "speed", 5, "obj-14", "attrui", "float", 5.0, 5, "obj-15", "attrui", "attr", "tilt", 5, "obj-15", "attrui", "float", 0.4 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-12", "live.gain~", "float", -1.7763568394002505e-15, 5, "obj-26", "attrui", "attr", "predelay", 5, "obj-26", "attrui", "float", 5.0, 5, "obj-25", "attrui", "attr", "size", 5, "obj-25", "attrui", "float", 100.0, 5, "obj-24", "attrui", "attr", "decay", 5, "obj-24", "attrui", "float", 101.0, 5, "obj-10", "toggle", "int", 0, 5, "obj-19", "attrui", "attr", "mix_rev", 5, "obj-19", "attrui", "float", 100.0, 5, "obj-9", "attrui", "attr", "absorb", 5, "obj-9", "attrui", "float", 30.0, 5, "obj-11", "attrui", "attr", "depth", 5, "obj-11", "attrui", "float", 20.0, 5, "obj-14", "attrui", "attr", "speed", 5, "obj-14", "attrui", "float", 5.0, 5, "obj-15", "attrui", "attr", "tilt", 5, "obj-15", "attrui", "float", 0.10000000000000002 ]
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
                    "patching_rect": [ 89.0, 536.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 31.282376425230325,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 13.0, 203.0, 41.0 ],
                    "text": "Erbverb-clone"
                }
            },
            {
                "box": {
                    "attr": "mix_rev",
                    "bgcolor": [ 0.24705882352941178, 0.42745098039215684, 0.3215686274509804, 1.0 ],
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 131.0, 193.0, 22.0 ],
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
                    "patching_rect": [ 89.0, 113.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 89.0, 146.0, 69.0, 22.0 ],
                    "text": "metro 3000"
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
                    "patching_rect": [ 178.0, 375.0, 25.806450843811035, 136.03227031230927 ]
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
                    "patching_rect": [ 150.0, 375.0, 25.806450843811035, 136.03227031230927 ]
                }
            },
            {
                "box": {
                    "attr": "decay",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 342.0, 193.0, 22.0 ],
                    "text_width": 130.197738468647
                }
            },
            {
                "box": {
                    "attr": "size",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 317.0, 193.0, 22.0 ],
                    "text_width": 129.80487796664238
                }
            },
            {
                "box": {
                    "attr": "predelay",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.0, 208.0, 193.0, 22.0 ],
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
                    "patching_rect": [ 89.0, 375.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
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
                    "patching_rect": [ 89.0, 323.0, 154.0, 22.0 ],
                    "text": "gen~ @gen erbeverb-clone"
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
                    "patching_rect": [ 89.0, 176.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 89.0, 219.0, 39.0, 22.0 ],
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
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
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
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
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