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
            50.0,
            50.0,
            1020.0,
            820.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-title",
                    "maxclass": "comment",
                    "text": "FM-SUPERMOD",
                    "fontname": "Arial Bold",
                    "fontsize": 20.0,
                    "patching_rect": [
                        20.0,
                        15.0,
                        250.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-sub",
                    "maxclass": "comment",
                    "text": "Quadrature Cross-Feedback FM Engine & Live Audio Modulator (Ring Mod / Doppler FM / Adaptive)",
                    "fontsize": 12.0,
                    "patching_rect": [
                        20.0,
                        45.0,
                        650.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-src-lbl",
                    "maxclass": "comment",
                    "text": "Audio Source: 1: Sine (220 Hz) | 2: Noise | 3: Live ADC In | 4: MIDI Note (60)",
                    "fontname": "Arial Bold",
                    "patching_rect": [
                        20.0,
                        80.0,
                        480.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-src-num",
                    "maxclass": "number",
                    "minimum": 1,
                    "maximum": 4,
                    "patching_rect": [
                        20.0,
                        105.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "text": "loadbang",
                    "patching_rect": [
                        90.0,
                        80.0,
                        56.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-init-msg",
                    "maxclass": "message",
                    "text": "1",
                    "patching_rect": [
                        90.0,
                        105.0,
                        29.5,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "text": "cycle~ 220",
                    "patching_rect": [
                        70.0,
                        140.0,
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
                    "patching_rect": [
                        150.0,
                        140.0,
                        44.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-adc",
                    "maxclass": "newobj",
                    "text": "adc~ 1 2",
                    "patching_rect": [
                        210.0,
                        140.0,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-sig-note",
                    "maxclass": "newobj",
                    "text": "sig~ 60",
                    "patching_rect": [
                        280.0,
                        140.0,
                        49.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-sel-L",
                    "maxclass": "newobj",
                    "text": "selector~ 4 1",
                    "patching_rect": [
                        20.0,
                        180.0,
                        160.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-sel-R",
                    "maxclass": "newobj",
                    "text": "selector~ 4 1",
                    "patching_rect": [
                        190.0,
                        180.0,
                        160.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-mode",
                    "maxclass": "attrui",
                    "attr": "mode",
                    "patching_rect": [
                        420.0,
                        80.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-freq",
                    "maxclass": "attrui",
                    "attr": "freq",
                    "patching_rect": [
                        420.0,
                        105.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-ratio",
                    "maxclass": "attrui",
                    "attr": "ratio",
                    "patching_rect": [
                        420.0,
                        130.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-fmidx",
                    "maxclass": "attrui",
                    "attr": "fm_index",
                    "patching_rect": [
                        420.0,
                        155.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-fb",
                    "maxclass": "attrui",
                    "attr": "feedback",
                    "patching_rect": [
                        420.0,
                        180.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-note",
                    "maxclass": "attrui",
                    "attr": "use_note_in",
                    "patching_rect": [
                        680.0,
                        80.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-filter",
                    "maxclass": "attrui",
                    "attr": "filter_lp",
                    "patching_rect": [
                        680.0,
                        105.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-att-mix",
                    "maxclass": "attrui",
                    "attr": "mix",
                    "patching_rect": [
                        680.0,
                        130.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "text": "gen~ @gen fm-supermod",
                    "fontname": "Arial Bold",
                    "fontsize": 13.0,
                    "patching_rect": [
                        20.0,
                        240.0,
                        280.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-scope-L",
                    "maxclass": "scope~",
                    "patching_rect": [
                        20.0,
                        290.0,
                        200.0,
                        130.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-scope-R",
                    "maxclass": "scope~",
                    "patching_rect": [
                        230.0,
                        290.0,
                        200.0,
                        130.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-spec",
                    "maxclass": "spectroscope~",
                    "patching_rect": [
                        440.0,
                        290.0,
                        320.0,
                        130.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "gain~",
                    "patching_rect": [
                        20.0,
                        440.0,
                        150.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "patching_rect": [
                        20.0,
                        490.0,
                        45.0,
                        45.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-lb",
                        0
                    ],
                    "destination": [
                        "obj-init-msg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-init-msg",
                        0
                    ],
                    "destination": [
                        "obj-src-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-src-num",
                        0
                    ],
                    "destination": [
                        "obj-sel-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-src-num",
                        0
                    ],
                    "destination": [
                        "obj-sel-R",
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
                        "obj-sel-L",
                        1
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
                        "obj-sel-R",
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
                        "obj-sel-L",
                        2
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
                        "obj-sel-R",
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
                        "obj-sel-L",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-adc",
                        1
                    ],
                    "destination": [
                        "obj-sel-R",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sig-note",
                        0
                    ],
                    "destination": [
                        "obj-sel-L",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sig-note",
                        0
                    ],
                    "destination": [
                        "obj-sel-R",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sel-L",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sel-R",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-mode",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-freq",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-ratio",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-fmidx",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-fb",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-note",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-filter",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-att-mix",
                        0
                    ],
                    "destination": [
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
                        "obj-scope-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-scope-R",
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
                        "obj-spec",
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
                    ]
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
                        0
                    ]
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
                        0
                    ],
                    "destination": [
                        "obj-ezdac",
                        1
                    ]
                }
            }
        ]
    }
}