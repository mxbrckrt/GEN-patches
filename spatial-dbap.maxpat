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
        "rect": [
            59.0,
            121.0,
            1000.0,
            780.0
        ],
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-out",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        430.0,
                        480.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 5. Multichannel Metering & Output (maxBstudio 1-7 / Grame 1-28) \u2500\u2500"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        15.0,
                        650.0,
                        33.0
                    ],
                    "text": "3D Distance-Based Amplitude Panning (DBAP & KNN)"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        48.0,
                        680.0,
                        21.0
                    ],
                    "text": "Dynamic CSV Layouts (maxBstudio 6ch / Grame 28ch Dome) \u2022 Continuous 32-Channel Spatial Engine"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-audio",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        85.0,
                        200.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 1. Audio Source \u2500\u2500"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        110.0,
                        68.0,
                        22.0
                    ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        105.0,
                        110.0,
                        50.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-noise-filter",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        105.0,
                        138.0,
                        95.0,
                        22.0
                    ],
                    "text": "reson~ 1. 800 5"
                }
            },
            {
                "box": {
                    "id": "obj-src-menu",
                    "items": [
                        "Sine 220Hz",
                        "Filtered Noise",
                        "Audio In 1"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        170.0,
                        110.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-src-sel",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        205.0,
                        100.0,
                        22.0
                    ],
                    "text": "selector~ 3 1"
                }
            },
            {
                "box": {
                    "id": "obj-adc",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        180.0,
                        170.0,
                        48.0,
                        22.0
                    ],
                    "text": "adc~ 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-traj",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        85.0,
                        230.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 2. 3D Trajectory Generator \u2500\u2500"
                }
            },
            {
                "box": {
                    "id": "obj-chaos",
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
                        250.0,
                        110.0,
                        185.0,
                        22.0
                    ],
                    "text": "gen~ @gen lorenz-rossler-chaos"
                }
            },
            {
                "box": {
                    "attr": "speed",
                    "id": "obj-chaos-speed",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        140.0,
                        140.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "system",
                    "id": "obj-chaos-sys",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        168.0,
                        140.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "calccount": 128,
                    "id": "obj-sc-xy",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        200.0,
                        90.0,
                        90.0
                    ]
                }
            },
            {
                "box": {
                    "calccount": 128,
                    "id": "obj-sc-z",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        350.0,
                        200.0,
                        90.0,
                        90.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-xy",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        292.0,
                        60.0,
                        18.0
                    ],
                    "text": "Orbit X-Y"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-lbl-z",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350.0,
                        292.0,
                        60.0,
                        18.0
                    ],
                    "text": "Height Z"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-csv",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        85.0,
                        260.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 3. Dynamic Speaker Layout (CSV) \u2500\u2500"
                }
            },
            {
                "box": {
                    "id": "obj-csv-menu",
                    "items": [
                        "maxBstudio (6 Sat + 1 Sub)",
                        "gramestudio (28ch 3D Dome)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        510.0,
                        110.0,
                        200.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-csv-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        510.0,
                        140.0,
                        60.0,
                        22.0
                    ],
                    "text": "route 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-msg-maxb",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        510.0,
                        170.0,
                        110.0,
                        22.0
                    ],
                    "text": "preset maxBstudio"
                }
            },
            {
                "box": {
                    "id": "obj-msg-grame",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        625.0,
                        170.0,
                        115.0,
                        22.0
                    ],
                    "text": "preset gramestudio"
                }
            },
            {
                "box": {
                    "id": "obj-js-loader",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        510.0,
                        210.0,
                        140.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "filename": "dbap_csv_loader.js",
                        "parameter_enable": 0
                    },
                    "text": "js dbap_csv_loader.js"
                }
            },
            {
                "box": {
                    "id": "obj-buf-pos",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        670.0,
                        210.0,
                        219.0,
                        22.0
                    ],
                    "text": "buffer~ spk_pos @samps 32 @chans 3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-layout-info",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        510.0,
                        245.0,
                        320.0,
                        19.0
                    ],
                    "text": "Active Layout: None loaded"
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        450.0,
                        110.0,
                        70.0,
                        22.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-dbap",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        320.0,
                        300.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 4. 3D DBAP Spatial Engine (32 Outlets) \u2500\u2500"
                }
            },
            {
                "box": {
                    "attr": "rolloff",
                    "id": "obj-att-roll",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        345.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "blur",
                    "id": "obj-att-blur",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        170.0,
                        345.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "focus",
                    "id": "obj-att-focus",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        310.0,
                        345.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "room_scale",
                    "id": "obj-att-room",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        345.0,
                        140.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gen-dbap",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 32,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        385.0,
                        720.0,
                        22.0
                    ],
                    "text": "gen~ @gen spatial-dbap"
                }
            },
            {
                "box": {
                    "id": "obj-mc-combine",
                    "maxclass": "newobj",
                    "numinlets": 32,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        30.0,
                        460.0,
                        720.0,
                        22.0
                    ],
                    "text": "mc.combine~ 32"
                }
            },
            {
                "box": {
                    "id": "obj-mc-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        30.0,
                        500.0,
                        480.0,
                        80.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "lastchannelcount": 0,
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
                        540.0,
                        500.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
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
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        540.0,
                        650.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-mcdac-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        598.0,
                        619.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-mcdac",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        620.0,
                        620.0,
                        527.0,
                        22.0
                    ],
                    "text": "mc.dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32"
                }
            },
            {
                "box": {
                    "id": "obj-mc-gain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        620.0,
                        575.0,
                        60.0,
                        22.0
                    ],
                    "text": "mc.*~ 0.5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-grp-bridge",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        610.0,
                        320.0,
                        20.0
                    ],
                    "text": "\u2500\u2500 6. Three.js / WebSocket Bridge (Branch B) \u2500\u2500"
                }
            },
            {
                "box": {
                    "id": "obj-bridge-node",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        103.0,
                        709.0,
                        130.0,
                        22.0
                    ],
                    "text": "s to_threejs_viewer"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-x",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        170.0,
                        640.0,
                        81.0,
                        22.0
                    ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-y",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        255.0,
                        640.0,
                        81.0,
                        22.0
                    ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-snapshot-z",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        340.0,
                        640.0,
                        81.0,
                        22.0
                    ],
                    "text": "snapshot~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-pak-xyz",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        103.0,
                        673.0,
                        246.99999999999994,
                        22.0
                    ],
                    "text": "pak /adm/obj/1/xyz 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-drop",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        760.0,
                        110.0,
                        130.0,
                        50.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-drop-lbl",
                    "maxclass": "comment",
                    "text": "Drag & Drop CSV Layout",
                    "fontsize": 10.0,
                    "patching_rect": [
                        765.0,
                        125.0,
                        120.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-msg-read",
                    "maxclass": "newobj",
                    "text": "prepend read",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        760.0,
                        170.0,
                        75.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-src-sel",
                        3
                    ],
                    "source": [
                        "obj-adc",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-att-blur",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-att-focus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-att-roll",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-att-room",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        3
                    ],
                    "order": 0,
                    "source": [
                        "obj-chaos",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        2
                    ],
                    "order": 0,
                    "source": [
                        "obj-chaos",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-chaos",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc-xy",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-chaos",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc-xy",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-chaos",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sc-z",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-chaos",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-snapshot-x",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-chaos",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-snapshot-y",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-chaos",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-snapshot-z",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-chaos",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-chaos",
                        0
                    ],
                    "source": [
                        "obj-chaos-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-chaos",
                        0
                    ],
                    "source": [
                        "obj-chaos-sys",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-csv-sel",
                        0
                    ],
                    "source": [
                        "obj-csv-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-msg-grame",
                        0
                    ],
                    "source": [
                        "obj-csv-sel",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-msg-maxb",
                        0
                    ],
                    "source": [
                        "obj-csv-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-src-sel",
                        1
                    ],
                    "source": [
                        "obj-cycle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ezdac",
                        1
                    ],
                    "source": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ezdac",
                        0
                    ],
                    "source": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-gen-dbap",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-gen-dbap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        31
                    ],
                    "source": [
                        "obj-gen-dbap",
                        31
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        30
                    ],
                    "source": [
                        "obj-gen-dbap",
                        30
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        29
                    ],
                    "source": [
                        "obj-gen-dbap",
                        29
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        28
                    ],
                    "source": [
                        "obj-gen-dbap",
                        28
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        27
                    ],
                    "source": [
                        "obj-gen-dbap",
                        27
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        26
                    ],
                    "source": [
                        "obj-gen-dbap",
                        26
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        25
                    ],
                    "source": [
                        "obj-gen-dbap",
                        25
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        24
                    ],
                    "source": [
                        "obj-gen-dbap",
                        24
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        23
                    ],
                    "source": [
                        "obj-gen-dbap",
                        23
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        22
                    ],
                    "source": [
                        "obj-gen-dbap",
                        22
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        21
                    ],
                    "source": [
                        "obj-gen-dbap",
                        21
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        20
                    ],
                    "source": [
                        "obj-gen-dbap",
                        20
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        19
                    ],
                    "source": [
                        "obj-gen-dbap",
                        19
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        18
                    ],
                    "source": [
                        "obj-gen-dbap",
                        18
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        17
                    ],
                    "source": [
                        "obj-gen-dbap",
                        17
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        16
                    ],
                    "source": [
                        "obj-gen-dbap",
                        16
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        15
                    ],
                    "source": [
                        "obj-gen-dbap",
                        15
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        14
                    ],
                    "source": [
                        "obj-gen-dbap",
                        14
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        13
                    ],
                    "source": [
                        "obj-gen-dbap",
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        12
                    ],
                    "source": [
                        "obj-gen-dbap",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        11
                    ],
                    "source": [
                        "obj-gen-dbap",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        10
                    ],
                    "source": [
                        "obj-gen-dbap",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        9
                    ],
                    "source": [
                        "obj-gen-dbap",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        8
                    ],
                    "source": [
                        "obj-gen-dbap",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        7
                    ],
                    "source": [
                        "obj-gen-dbap",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        6
                    ],
                    "source": [
                        "obj-gen-dbap",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        5
                    ],
                    "source": [
                        "obj-gen-dbap",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        4
                    ],
                    "source": [
                        "obj-gen-dbap",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        3
                    ],
                    "source": [
                        "obj-gen-dbap",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        2
                    ],
                    "source": [
                        "obj-gen-dbap",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-gen-dbap",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-combine",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-gen-dbap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-bridge-node",
                        0
                    ],
                    "source": [
                        "obj-js-loader",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-js-loader",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-csv-menu",
                        0
                    ],
                    "source": [
                        "obj-loadbang",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-gain",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-mc-combine",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mc-meter",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-mc-combine",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mcdac",
                        0
                    ],
                    "source": [
                        "obj-mc-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-mcdac",
                        0
                    ],
                    "source": [
                        "obj-mcdac-toggle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-js-loader",
                        0
                    ],
                    "source": [
                        "obj-msg-grame",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-js-loader",
                        0
                    ],
                    "source": [
                        "obj-msg-maxb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-noise-filter",
                        0
                    ],
                    "source": [
                        "obj-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-src-sel",
                        2
                    ],
                    "source": [
                        "obj-noise-filter",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-bridge-node",
                        0
                    ],
                    "source": [
                        "obj-pak-xyz",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pak-xyz",
                        1
                    ],
                    "source": [
                        "obj-snapshot-x",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pak-xyz",
                        2
                    ],
                    "source": [
                        "obj-snapshot-y",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pak-xyz",
                        3
                    ],
                    "source": [
                        "obj-snapshot-z",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-src-sel",
                        0
                    ],
                    "source": [
                        "obj-src-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen-dbap",
                        0
                    ],
                    "source": [
                        "obj-src-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-drop",
                        0
                    ],
                    "destination": [
                        "obj-msg-read",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-msg-read",
                        0
                    ],
                    "destination": [
                        "obj-js-loader",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [
                "live.gain~",
                "live.gain~",
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