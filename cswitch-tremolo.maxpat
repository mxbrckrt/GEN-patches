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
                    "fontsize": 18.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        26.0,
                        95.0,
                        422.0,
                        27.0
                    ],
                    "text": "original idea by Maurizio Giri - addons Max Bruckert"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        26.0,
                        66.0,
                        432.0,
                        27.0
                    ],
                    "text": "Granular Chopper & Anti-Lock Trapezoidal Modulator"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        26.0,
                        17.0,
                        281.0,
                        47.0
                    ],
                    "text": "Cswitch Tremolo"
                }
            },
            {
                "box": {
                    "attr": "rate",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        404.53146853146853,
                        305.5944055944056,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        483.3531468531469,
                        225.55244755244757,
                        52.0,
                        20.0
                    ],
                    "text": "freq min"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        395.83916083916085,
                        225.55244755244755,
                        55.0,
                        20.0
                    ],
                    "text": "freq max"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        325.92657342657344,
                        225.55244755244757,
                        19.0,
                        20.0
                    ],
                    "text": "Q"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        216.71328671328672,
                        225.55244755244755,
                        65.0,
                        20.0
                    ],
                    "text": "filter depth"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        133.00000000000003,
                        225.55244755244757,
                        59.0,
                        20.0
                    ],
                    "text": "rndm pan"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        493.50000000000006,
                        128.00000000000009,
                        34.0,
                        20.0
                    ],
                    "text": "pwm"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        404.99999999999994,
                        128.00000000000006,
                        37.0,
                        20.0
                    ],
                    "text": "slope"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        301.99999999999994,
                        128.00000000000003,
                        69.0,
                        20.0
                    ],
                    "text": "time randm"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        231.5,
                        128.0,
                        29.0,
                        20.0
                    ],
                    "text": "rate"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        143.0,
                        128.00000000000003,
                        39.0,
                        20.0
                    ],
                    "text": "depth"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "gain~",
                    "multichannelvariant": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        171.0,
                        414.0,
                        22.0,
                        140.0
                    ],
                    "relative": 1
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        396.83916083916085,
                        247.55244755244757,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.3333,
                            "parameter_initial": [
                                800.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[5]",
                            "parameter_mmax": 16000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "live.numbox[5]"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        482.8531468531469,
                        264.3356643356643,
                        72.0,
                        22.0
                    ],
                    "text": "min_freq $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        482.8531468531469,
                        247.55244755244757,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.3333,
                            "parameter_initial": [
                                200.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[6]",
                            "parameter_mmax": 16000.0,
                            "parameter_mmin": 40.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "live.numbox[6]"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        396.83916083916085,
                        264.3356643356643,
                        75.0,
                        22.0
                    ],
                    "text": "max_freq $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-36",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        309.42657342657344,
                        247.55244755244757,
                        52.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                5.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "q",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "q",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "q"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        309.42657342657344,
                        264.3356643356643,
                        32.0,
                        22.0
                    ],
                    "text": "q $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-38",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        222.71328671328672,
                        247.55244755244757,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "f_depth",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "f_depth",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "f_depth"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        222.71328671328672,
                        264.3356643356643,
                        85.0,
                        22.0
                    ],
                    "text": "filter_depth $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-40",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        136.0,
                        247.55244755244757,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "rand_pan",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "rand_pan",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "rand_pan"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        136.0,
                        264.3356643356643,
                        76.0,
                        22.0
                    ],
                    "text": "rand_pan $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-30",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        484.0,
                        150.0,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.3031496062992129
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "pwm",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "pwm",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "pwm"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        483.0,
                        167.0,
                        51.0,
                        22.0
                    ],
                    "text": "pwm $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        397.0,
                        150.0,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                5.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "slope",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "slope",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "slope"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        397.0,
                        167.0,
                        54.0,
                        22.0
                    ],
                    "text": "slope $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-26",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        310.0,
                        150.0,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "time_randm",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "time_randm",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "time_randm"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        310.0,
                        167.0,
                        79.0,
                        22.0
                    ],
                    "text": "time_rand $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        223.0,
                        150.0,
                        55.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.3333,
                            "parameter_initial": [
                                8.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "rate",
                            "parameter_mmax": 500.0,
                            "parameter_mmin": 0.01,
                            "parameter_modmode": 3,
                            "parameter_shortname": "rate",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "rate"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        223.0,
                        167.0,
                        46.0,
                        22.0
                    ],
                    "text": "rate $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-23",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        136.0,
                        150.0,
                        53.0,
                        18.0
                    ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.65
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "depth",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "depth",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        0.8313725490196079,
                        0.8313725490196079,
                        0.8313725490196079,
                        1.0
                    ],
                    "varname": "depth"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        136.0,
                        167.0,
                        55.0,
                        22.0
                    ],
                    "text": "depth $1"
                }
            },
            {
                "box": {
                    "displaychan": 2,
                    "id": "obj-16",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        352.0,
                        411.0,
                        61.0,
                        61.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        280.0,
                        411.0,
                        61.0,
                        61.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "int"
                    ],
                    "patching_rect": [
                        136.0,
                        414.0,
                        30.0,
                        135.0
                    ],
                    "slidercolor": [
                        0.07934807936557703,
                        0.07934804057876954,
                        0.0793480505472888,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        171.0,
                        568.0,
                        54.0,
                        22.0
                    ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        17.00000000000003,
                        197.0,
                        114.0,
                        22.0
                    ],
                    "text": "mc.pink~ @chans 2"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        136.0,
                        334.965034965035,
                        235.0,
                        22.0
                    ],
                    "text": "mc.gen~ @chans 2 @gen cswitch-tremolo"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        0
                    ],
                    "source": [
                        "obj-1",
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
                        "obj-1",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-42",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-1",
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
                    "source": [
                        "obj-2",
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
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-25",
                        0
                    ],
                    "source": [
                        "obj-24",
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
                    "source": [
                        "obj-25",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-26",
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
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
                        0
                    ],
                    "source": [
                        "obj-28",
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
                    "source": [
                        "obj-29",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-31",
                        0
                    ],
                    "source": [
                        "obj-30",
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
                    "source": [
                        "obj-31",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-35",
                        0
                    ],
                    "source": [
                        "obj-32",
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
                    "source": [
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        0
                    ],
                    "source": [
                        "obj-34",
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
                    "source": [
                        "obj-35",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-37",
                        0
                    ],
                    "source": [
                        "obj-36",
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
                    "source": [
                        "obj-37",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-39",
                        0
                    ],
                    "source": [
                        "obj-38",
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
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-41",
                        0
                    ],
                    "source": [
                        "obj-40",
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
                    "source": [
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-42",
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
                    "source": [
                        "obj-6",
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
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-23": [
                "depth",
                "depth",
                0
            ],
            "obj-24": [
                "rate",
                "rate",
                0
            ],
            "obj-26": [
                "time_randm",
                "time_randm",
                0
            ],
            "obj-28": [
                "slope",
                "slope",
                0
            ],
            "obj-30": [
                "pwm",
                "pwm",
                0
            ],
            "obj-32": [
                "live.numbox[5]",
                "live.numbox",
                0
            ],
            "obj-34": [
                "live.numbox[6]",
                "live.numbox",
                0
            ],
            "obj-36": [
                "q",
                "q",
                0
            ],
            "obj-38": [
                "f_depth",
                "f_depth",
                0
            ],
            "obj-40": [
                "rand_pan",
                "rand_pan",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}