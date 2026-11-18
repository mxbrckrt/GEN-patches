{
    "fileversion": 1,
    "appversion": {
        "major": 9,
        "minor": 1,
        "revision": 5,
        "architecture": "x64",
        "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
        60.0,
        60.0,
        1150.0,
        850.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Lato",
    "gridonopen": 1,
    "gridsize": [
        15.0,
        15.0
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "boxes": [
        {
            "box": {
                "id": "obj-title",
                "maxclass": "comment",
                "text": "3D Distance-Based Amplitude Panning (DBAP & KNN)",
                "fontface": 1,
                "fontsize": 24.0,
                "patching_rect": [
                    30.0,
                    15.0,
                    650.0,
                    35.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-sub",
                "maxclass": "comment",
                "text": "Dynamic CSV Layouts (maxBstudio 6ch / Grame 28ch Dome) \u2022 Continuous 32-Channel Spatial Engine",
                "fontsize": 13.0,
                "patching_rect": [
                    30.0,
                    48.0,
                    680.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-audio",
                "maxclass": "comment",
                "text": "\u2500\u2500 1. Audio Source \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    30.0,
                    85.0,
                    200.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-cycle",
                "maxclass": "newobj",
                "text": "cycle~ 220",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-noise",
                "maxclass": "newobj",
                "text": "noise~",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-noise-filter",
                "maxclass": "newobj",
                "text": "reson~ 1.0 800 5",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-src-menu",
                "maxclass": "umenu",
                "items": [
                    "Sine 220Hz",
                    "Filtered Noise",
                    "Audio In 1"
                ],
                "numinlets": 1,
                "numoutlets": 3,
                "outlettype": [
                    "int",
                    "",
                    ""
                ],
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
                "text": "selector~ 3 1",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-adc",
                "maxclass": "newobj",
                "text": "adc~ 1",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-traj",
                "maxclass": "comment",
                "text": "\u2500\u2500 2. 3D Trajectory Generator \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    250.0,
                    85.0,
                    230.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-chaos",
                "maxclass": "newobj",
                "text": "gen~ @gen lorenz-rossler-chaos",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-chaos-speed",
                "maxclass": "attrui",
                "attr": "speed",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "id": "obj-chaos-sys",
                "maxclass": "attrui",
                "attr": "system",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "id": "obj-sc-xy",
                "maxclass": "scope~",
                "calccount": 128,
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
                "id": "obj-sc-z",
                "maxclass": "scope~",
                "calccount": 128,
                "range": [
                    -1.0,
                    1.0
                ],
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
                "id": "obj-lbl-xy",
                "maxclass": "comment",
                "text": "Orbit X-Y",
                "fontsize": 10.0,
                "patching_rect": [
                    250.0,
                    292.0,
                    60.0,
                    18.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-lbl-z",
                "maxclass": "comment",
                "text": "Height Z",
                "fontsize": 10.0,
                "patching_rect": [
                    350.0,
                    292.0,
                    60.0,
                    18.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-csv",
                "maxclass": "comment",
                "text": "\u2500\u2500 3. Dynamic Speaker Layout (CSV) \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    510.0,
                    85.0,
                    260.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-csv-menu",
                "maxclass": "umenu",
                "items": [
                    "maxBstudio (6 Sat + 1 Sub)",
                    "gramestudio (28ch 3D Dome)"
                ],
                "numinlets": 1,
                "numoutlets": 3,
                "outlettype": [
                    "int",
                    "",
                    ""
                ],
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
                "text": "route 0 1",
                "numinlets": 1,
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-msg-maxb",
                "maxclass": "message",
                "text": "preset maxBstudio",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-msg-grame",
                "maxclass": "message",
                "text": "preset gramestudio",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-js-loader",
                "maxclass": "newobj",
                "text": "js dbap_csv_loader.js",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-buf-pos",
                "maxclass": "newobj",
                "text": "buffer~ spk_pos @samps 32 @chans 3",
                "numinlets": 1,
                "numoutlets": 2,
                "outlettype": [
                    "float",
                    "bang"
                ],
                "patching_rect": [
                    670.0,
                    210.0,
                    215.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-layout-info",
                "maxclass": "comment",
                "text": "Active Layout: None loaded",
                "fontface": 0,
                "fontsize": 11.0,
                "patching_rect": [
                    510.0,
                    245.0,
                    320.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-loadbang",
                "maxclass": "newobj",
                "text": "loadmess 0",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
                "patching_rect": [
                    450.0,
                    110.0,
                    58.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-dbap",
                "maxclass": "comment",
                "text": "\u2500\u2500 4. 3D DBAP Spatial Engine (32 Outlets) \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    30.0,
                    320.0,
                    300.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-att-roll",
                "maxclass": "attrui",
                "attr": "rolloff",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "id": "obj-att-blur",
                "maxclass": "attrui",
                "attr": "blur",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "id": "obj-att-focus",
                "maxclass": "attrui",
                "attr": "focus",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "id": "obj-att-room",
                "maxclass": "attrui",
                "attr": "room_scale",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
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
                "text": "gen~ @gen spatial-dbap",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-out",
                "maxclass": "comment",
                "text": "\u2500\u2500 5. Multichannel Metering & Output (maxBstudio 1-7 / Grame 1-28) \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    30.0,
                    430.0,
                    480.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-mc-combine",
                "maxclass": "newobj",
                "text": "mc.combine~ 32",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-mc-meter",
                "maxclass": "mc.meter~",
                "numinlets": 1,
                "numoutlets": 1,
                "outlettype": [
                    "list"
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
                "patching_rect": [
                    620.0,
                    500.0,
                    24.0,
                    24.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-mcdac",
                "maxclass": "newobj",
                "text": "mc.dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32",
                "numinlets": 1,
                "numoutlets": 0,
                "patching_rect": [
                    620.0,
                    540.0,
                    500.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-mc-gain",
                "maxclass": "newobj",
                "text": "mc.*~ 0.5",
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
                ]
            }
        },
        {
            "box": {
                "id": "obj-grp-bridge",
                "maxclass": "comment",
                "text": "\u2500\u2500 6. Three.js / WebSocket Bridge (Branch B) \u2500\u2500",
                "fontface": 1,
                "fontsize": 12.0,
                "patching_rect": [
                    30.0,
                    610.0,
                    320.0,
                    20.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-bridge-node",
                "maxclass": "newobj",
                "text": "s to_threejs_viewer",
                "numinlets": 1,
                "numoutlets": 0,
                "patching_rect": [
                    30.0,
                    640.0,
                    130.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-snapshot-x",
                "maxclass": "newobj",
                "text": "snapshot~ 20",
                "numinlets": 2,
                "numoutlets": 1,
                "outlettype": [
                    "float"
                ],
                "patching_rect": [
                    170.0,
                    640.0,
                    80.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-snapshot-y",
                "maxclass": "newobj",
                "text": "snapshot~ 20",
                "numinlets": 2,
                "numoutlets": 1,
                "outlettype": [
                    "float"
                ],
                "patching_rect": [
                    255.0,
                    640.0,
                    80.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-snapshot-z",
                "maxclass": "newobj",
                "text": "snapshot~ 20",
                "numinlets": 2,
                "numoutlets": 1,
                "outlettype": [
                    "float"
                ],
                "patching_rect": [
                    340.0,
                    640.0,
                    80.0,
                    22.0
                ]
            }
        },
        {
            "box": {
                "id": "obj-pak-xyz",
                "maxclass": "newobj",
                "text": "pak /adm/obj/1/xyz 0. 0. 0.",
                "numinlets": 4,
                "numoutlets": 1,
                "outlettype": [
                    ""
                ],
                "patching_rect": [
                    170.0,
                    675.0,
                    220.0,
                    22.0
                ]
            }
        }
    ],
    "lines": [
        {
            "patchline": {
                "source": [
                    "obj-src-menu",
                    0
                ],
                "destination": [
                    "obj-src-sel",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-cycle",
                    0
                ],
                "destination": [
                    "obj-src-sel",
                    1
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-noise",
                    0
                ],
                "destination": [
                    "obj-noise-filter",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-noise-filter",
                    0
                ],
                "destination": [
                    "obj-src-sel",
                    2
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-adc",
                    0
                ],
                "destination": [
                    "obj-src-sel",
                    3
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos-speed",
                    0
                ],
                "destination": [
                    "obj-chaos",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos-sys",
                    0
                ],
                "destination": [
                    "obj-chaos",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    0
                ],
                "destination": [
                    "obj-sc-xy",
                    0
                ],
                "order": 0
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    1
                ],
                "destination": [
                    "obj-sc-xy",
                    1
                ],
                "order": 0
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    2
                ],
                "destination": [
                    "obj-sc-z",
                    0
                ],
                "order": 0
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-csv-menu",
                    0
                ],
                "destination": [
                    "obj-csv-sel",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-csv-sel",
                    0
                ],
                "destination": [
                    "obj-msg-maxb",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-csv-sel",
                    1
                ],
                "destination": [
                    "obj-msg-grame",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-msg-maxb",
                    0
                ],
                "destination": [
                    "obj-js-loader",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-msg-grame",
                    0
                ],
                "destination": [
                    "obj-js-loader",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-loadbang",
                    0
                ],
                "destination": [
                    "obj-csv-menu",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-src-sel",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    1
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    1
                ],
                "destination": [
                    "obj-gen-dbap",
                    2
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    2
                ],
                "destination": [
                    "obj-gen-dbap",
                    3
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-att-roll",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-att-blur",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-att-focus",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-att-room",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-js-loader",
                    0
                ],
                "destination": [
                    "obj-gen-dbap",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    0
                ],
                "destination": [
                    "obj-mc-combine",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    1
                ],
                "destination": [
                    "obj-mc-combine",
                    1
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    2
                ],
                "destination": [
                    "obj-mc-combine",
                    2
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    3
                ],
                "destination": [
                    "obj-mc-combine",
                    3
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    4
                ],
                "destination": [
                    "obj-mc-combine",
                    4
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    5
                ],
                "destination": [
                    "obj-mc-combine",
                    5
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    6
                ],
                "destination": [
                    "obj-mc-combine",
                    6
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    7
                ],
                "destination": [
                    "obj-mc-combine",
                    7
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    8
                ],
                "destination": [
                    "obj-mc-combine",
                    8
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    9
                ],
                "destination": [
                    "obj-mc-combine",
                    9
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    10
                ],
                "destination": [
                    "obj-mc-combine",
                    10
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    11
                ],
                "destination": [
                    "obj-mc-combine",
                    11
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    12
                ],
                "destination": [
                    "obj-mc-combine",
                    12
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    13
                ],
                "destination": [
                    "obj-mc-combine",
                    13
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    14
                ],
                "destination": [
                    "obj-mc-combine",
                    14
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    15
                ],
                "destination": [
                    "obj-mc-combine",
                    15
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    16
                ],
                "destination": [
                    "obj-mc-combine",
                    16
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    17
                ],
                "destination": [
                    "obj-mc-combine",
                    17
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    18
                ],
                "destination": [
                    "obj-mc-combine",
                    18
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    19
                ],
                "destination": [
                    "obj-mc-combine",
                    19
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    20
                ],
                "destination": [
                    "obj-mc-combine",
                    20
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    21
                ],
                "destination": [
                    "obj-mc-combine",
                    21
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    22
                ],
                "destination": [
                    "obj-mc-combine",
                    22
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    23
                ],
                "destination": [
                    "obj-mc-combine",
                    23
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    24
                ],
                "destination": [
                    "obj-mc-combine",
                    24
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    25
                ],
                "destination": [
                    "obj-mc-combine",
                    25
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    26
                ],
                "destination": [
                    "obj-mc-combine",
                    26
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    27
                ],
                "destination": [
                    "obj-mc-combine",
                    27
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    28
                ],
                "destination": [
                    "obj-mc-combine",
                    28
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    29
                ],
                "destination": [
                    "obj-mc-combine",
                    29
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    30
                ],
                "destination": [
                    "obj-mc-combine",
                    30
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    31
                ],
                "destination": [
                    "obj-mc-combine",
                    31
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-mc-combine",
                    0
                ],
                "destination": [
                    "obj-mc-meter",
                    0
                ],
                "order": 0
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    0
                ],
                "destination": [
                    "obj-gain",
                    0
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gen-dbap",
                    1
                ],
                "destination": [
                    "obj-gain",
                    1
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gain",
                    0
                ],
                "destination": [
                    "obj-ezdac",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-gain",
                    1
                ],
                "destination": [
                    "obj-ezdac",
                    1
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-mcdac-toggle",
                    0
                ],
                "destination": [
                    "obj-mcdac",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-mc-combine",
                    0
                ],
                "destination": [
                    "obj-mc-gain",
                    0
                ],
                "order": 1
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-mc-gain",
                    0
                ],
                "destination": [
                    "obj-mcdac",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-js-loader",
                    2
                ],
                "destination": [
                    "obj-bridge-node",
                    0
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    0
                ],
                "destination": [
                    "obj-snapshot-x",
                    0
                ],
                "order": 2
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    1
                ],
                "destination": [
                    "obj-snapshot-y",
                    0
                ],
                "order": 2
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-chaos",
                    2
                ],
                "destination": [
                    "obj-snapshot-z",
                    0
                ],
                "order": 2
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-snapshot-x",
                    0
                ],
                "destination": [
                    "obj-pak-xyz",
                    1
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-snapshot-y",
                    0
                ],
                "destination": [
                    "obj-pak-xyz",
                    2
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-snapshot-z",
                    0
                ],
                "destination": [
                    "obj-pak-xyz",
                    3
                ]
            }
        },
        {
            "patchline": {
                "source": [
                    "obj-pak-xyz",
                    0
                ],
                "destination": [
                    "obj-bridge-node",
                    0
                ]
            }
        }
    ]
}