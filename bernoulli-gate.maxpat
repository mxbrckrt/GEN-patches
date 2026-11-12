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
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        26.0,
                        78.0,
                        417.0,
                        27.0
                    ],
                    "presentation_linecount": 4,
                    "text": "Dual-Output Probabilistic Trigger & Gate Distributor"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        391.0,
                        308.0,
                        73.0,
                        33.0
                    ],
                    "text": "1 if == out A\n2 if == out B"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "gridcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-20",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        334.0,
                        351.0,
                        101.0,
                        98.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        126.0,
                        180.0,
                        51.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "frequency[1]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "frequency",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        127.0,
                        230.0,
                        80.0,
                        22.0
                    ],
                    "text": "probability $1"
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
                    "activebgoncolor": [
                        0.0,
                        0.7176470588235294,
                        0.7019607843137254,
                        0.5
                    ],
                    "activetextcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "activetextoncolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "focusbordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        298.0,
                        180.0,
                        72.0,
                        46.0
                    ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextcolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
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
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "external",
                    "textcolor": [
                        0.4823529411764706,
                        0.4823529411764706,
                        0.4823529411764706,
                        1.0
                    ],
                    "textoffcolor": [
                        0.4823529411764706,
                        0.4823529411764706,
                        0.4823529411764706,
                        1.0
                    ],
                    "texton": "automatic",
                    "varname": "live.text[1]"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        298.0,
                        230.0,
                        72.0,
                        22.0
                    ],
                    "text": "trigmode $1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        211.0,
                        180.0,
                        51.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.333,
                            "parameter_initial": [
                                2
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "frequency",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 0.01,
                            "parameter_modmode": 0,
                            "parameter_shortname": "frequency",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        212.0,
                        230.0,
                        78.0,
                        22.0
                    ],
                    "text": "frequency $1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        334.0,
                        319.0,
                        56.0,
                        22.0
                    ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "attr": "trigmode",
                    "id": "obj-5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        391.0,
                        204.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "frequency",
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        391.0,
                        230.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "probability",
                    "id": "obj-1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        391.0,
                        178.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        26.0,
                        17.0,
                        161.0,
                        47.0
                    ],
                    "text": "bernouilli"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fgcolor": [
                        0.0,
                        1.0,
                        0.984313725490196,
                        1.0
                    ],
                    "gridcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-18",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        199.0,
                        319.0,
                        130.0,
                        130.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fgcolor": [
                        0.0,
                        0.9768045545,
                        0.0,
                        1.0
                    ],
                    "gridcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-17",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        64.0,
                        319.0,
                        130.0,
                        130.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        64.0,
                        180.0,
                        53.0,
                        22.0
                    ],
                    "text": "cycle~ 5"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        64.0,
                        285.0,
                        289.0,
                        22.0
                    ],
                    "text": "gen~ @gen bernoulli-gate"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        400.5,
                        268.28125,
                        73.5,
                        268.28125
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
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
                        "obj-19",
                        0
                    ],
                    "source": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        136.5,
                        267.5,
                        73.5,
                        267.5
                    ],
                    "source": [
                        "obj-19",
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
                    "order": 1,
                    "source": [
                        "obj-2",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
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
                        "obj-18",
                        0
                    ],
                    "source": [
                        "obj-2",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-20",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-2",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        400.5,
                        267.5,
                        73.5,
                        267.5
                    ],
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-34",
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
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        221.5,
                        267.5,
                        73.5,
                        267.5
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
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        400.5,
                        268.01171875,
                        73.5,
                        268.01171875
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        307.5,
                        267.5,
                        73.5,
                        267.5
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-12": [
                "live.text[1]",
                "live.text",
                0
            ],
            "obj-16": [
                "frequency[1]",
                "frequency",
                0
            ],
            "obj-32": [
                "frequency",
                "frequency",
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