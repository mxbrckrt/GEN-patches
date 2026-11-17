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
        "openrect": [
            50.0,
            50.0,
            600.0,
            600.0
        ],
        "openrectmode": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        429.0,
                        495.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        429.0,
                        529.0,
                        35.0,
                        22.0
                    ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        426.0,
                        399.0,
                        70.0,
                        22.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "preset",
                        "int",
                        "preset",
                        "int",
                        ""
                    ],
                    "patching_rect": [
                        426.0,
                        436.0,
                        100.0,
                        40.0
                    ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.1,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "speed",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                3.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "system",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-14",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "param_rho",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                30.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "inject",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.5000000000000001
                            ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "inject",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        229.0,
                        177.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "param_rho",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        229.0,
                        151.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        258.0,
                        358.0,
                        136.0,
                        118.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        64.0,
                        358.0,
                        115.0,
                        118.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        37.0,
                        203.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "system",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        64.0,
                        204.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "speed",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        64.0,
                        177.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        64.0,
                        151.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        355.0,
                        295.0,
                        59.0,
                        57.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        258.0,
                        295.0,
                        59.0,
                        57.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        161.0,
                        295.0,
                        59.0,
                        57.0
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 36.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3.0,
                        7.0,
                        583.0,
                        47.0
                    ],
                    "text": "Lorenz & R\u00f6ssler Strange Attractors"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 16.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        72.0,
                        161.0,
                        24.0
                    ],
                    "text": "Chaotic Audio Engine"
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        64.0,
                        244.0,
                        310.0,
                        22.0
                    ],
                    "text": "gen~ @gen lorenz-rossler-chaos"
                }
            },
            {
                "box": {
                    "id": "obj-scopeL",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        64.0,
                        295.0,
                        59.0,
                        57.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-lbl-x",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        64.0,
                        275.0,
                        95.0,
                        18.0
                    ],
                    "text": "X (-1..1 Azimuth)",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-y",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        161.0,
                        275.0,
                        95.0,
                        18.0
                    ],
                    "text": "Y (-1..1 Elevation)",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-z",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        258.0,
                        275.0,
                        95.0,
                        18.0
                    ],
                    "text": "Z (0..1 Height)",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-trig",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        355.0,
                        275.0,
                        80.0,
                        18.0
                    ],
                    "text": "Trig Impulse",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-xy",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        64.0,
                        338.0,
                        115.0,
                        18.0
                    ],
                    "text": "X-Y Phase Orbit",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-yz",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        258.0,
                        338.0,
                        115.0,
                        18.0
                    ],
                    "text": "Y-Z Phase Orbit",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-sys",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        220.0,
                        206.0,
                        230.0,
                        18.0
                    ],
                    "text": "0 = Lorenz (Butterfly) / 1 = R\u00f6ssler (Spiral)",
                    "fontsize": 10.0,
                    "fontname": "Lato"
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        480.0,
                        360.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -18.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_shortname": "Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "source": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "source": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-16",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-16",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        0
                    ],
                    "source": [
                        "obj-gen",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        1
                    ],
                    "hidden": 1,
                    "order": 1,
                    "source": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        0
                    ],
                    "hidden": 1,
                    "order": 0,
                    "source": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        1
                    ],
                    "hidden": 1,
                    "order": 0,
                    "source": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        0
                    ],
                    "hidden": 1,
                    "order": 0,
                    "source": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-scopeL",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ],
                    "order": 3
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-gain",
                        1
                    ],
                    "order": 3
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        1
                    ],
                    "destination": [
                        "obj-6",
                        1
                    ],
                    "order": 0
                }
            }
        ],
        "autosave": 0
    }
}