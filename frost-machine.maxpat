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
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        186.0,
                        139.0,
                        31.0,
                        20.0
                    ],
                    "text": "sine"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        141.0,
                        124.0,
                        45.0,
                        20.0
                    ],
                    "text": "burst 2"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        91.0,
                        139.0,
                        45.0,
                        20.0
                    ],
                    "text": "burst 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        44.0,
                        124.0,
                        61.0,
                        20.0
                    ],
                    "text": "play sfiles"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        32.0,
                        62.0,
                        407.0,
                        47.0
                    ],
                    "text": "industrial reverb with hard fuzz and auto-pumping compressor (think Ben Frost)"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        120.0,
                        403.0,
                        70.0,
                        22.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "attr": "p_gain_wet_db",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        508.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        32.0,
                        11.0,
                        399.0,
                        47.0
                    ],
                    "text": "THE FROST MACHINE"
                }
            },
            {
                "box": {
                    "id": "obj-2",
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
                        120.0,
                        441.0,
                        100.0,
                        40.0
                    ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "p_mix_pct",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                21.0,
                                5,
                                "obj-4",
                                "attrui",
                                "attr",
                                "p_decay_pct",
                                5,
                                "obj-4",
                                "attrui",
                                "float",
                                94.0,
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "p_mod_hz",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.10000000000000002,
                                5,
                                "obj-9",
                                "attrui",
                                "attr",
                                "p_release_ms",
                                5,
                                "obj-9",
                                "attrui",
                                "float",
                                200.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "p_pump_db",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                -16.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "p_size",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.6,
                                5,
                                "obj-111",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-16",
                                "attrui",
                                "attr",
                                "p_fuzz_hz",
                                5,
                                "obj-16",
                                "attrui",
                                "float",
                                800.0,
                                5,
                                "obj-18",
                                "attrui",
                                "attr",
                                "p_fuzz_db",
                                5,
                                "obj-18",
                                "attrui",
                                "float",
                                6.0,
                                5,
                                "obj-19",
                                "attrui",
                                "attr",
                                "p_mod_ms",
                                5,
                                "obj-19",
                                "attrui",
                                "float",
                                20.0,
                                5,
                                "obj-20",
                                "attrui",
                                "attr",
                                "p_damp_hz",
                                5,
                                "obj-20",
                                "attrui",
                                "float",
                                1000.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "p_gain_wet_db",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                -8.0
                            ]
                        },
                        {
                            "number": 2,
                            "data": [
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "p_mix_pct",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                50.0,
                                5,
                                "obj-4",
                                "attrui",
                                "attr",
                                "p_decay_pct",
                                5,
                                "obj-4",
                                "attrui",
                                "float",
                                94.0,
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "p_mod_hz",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.07000000000000002,
                                5,
                                "obj-9",
                                "attrui",
                                "attr",
                                "p_release_ms",
                                5,
                                "obj-9",
                                "attrui",
                                "float",
                                500.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "p_pump_db",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                -15.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "p_size",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.9320000000000003,
                                5,
                                "obj-111",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-16",
                                "attrui",
                                "attr",
                                "p_fuzz_hz",
                                5,
                                "obj-16",
                                "attrui",
                                "float",
                                2000.0,
                                5,
                                "obj-18",
                                "attrui",
                                "attr",
                                "p_fuzz_db",
                                5,
                                "obj-18",
                                "attrui",
                                "float",
                                10.0,
                                5,
                                "obj-19",
                                "attrui",
                                "attr",
                                "p_mod_ms",
                                5,
                                "obj-19",
                                "attrui",
                                "float",
                                6.0,
                                5,
                                "obj-20",
                                "attrui",
                                "attr",
                                "p_damp_hz",
                                5,
                                "obj-20",
                                "attrui",
                                "float",
                                6000.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "p_gain_wet_db",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                -9.0
                            ]
                        },
                        {
                            "number": 3,
                            "data": [
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "p_mix_pct",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                100.0,
                                5,
                                "obj-4",
                                "attrui",
                                "attr",
                                "p_decay_pct",
                                5,
                                "obj-4",
                                "attrui",
                                "float",
                                60.0,
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "p_mod_hz",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.4,
                                5,
                                "obj-9",
                                "attrui",
                                "attr",
                                "p_release_ms",
                                5,
                                "obj-9",
                                "attrui",
                                "float",
                                500.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "p_pump_db",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                -15.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "p_size",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.9,
                                5,
                                "obj-111",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-16",
                                "attrui",
                                "attr",
                                "p_fuzz_hz",
                                5,
                                "obj-16",
                                "attrui",
                                "float",
                                800.0,
                                5,
                                "obj-18",
                                "attrui",
                                "attr",
                                "p_fuzz_db",
                                5,
                                "obj-18",
                                "attrui",
                                "float",
                                30.0,
                                5,
                                "obj-19",
                                "attrui",
                                "attr",
                                "p_mod_ms",
                                5,
                                "obj-19",
                                "attrui",
                                "float",
                                6.0,
                                5,
                                "obj-20",
                                "attrui",
                                "attr",
                                "p_damp_hz",
                                5,
                                "obj-20",
                                "attrui",
                                "float",
                                6000.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "p_gain_wet_db",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                -16.0
                            ]
                        },
                        {
                            "number": 4,
                            "data": [
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "p_mix_pct",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                53.0,
                                5,
                                "obj-4",
                                "attrui",
                                "attr",
                                "p_decay_pct",
                                5,
                                "obj-4",
                                "attrui",
                                "float",
                                85.0,
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "p_mod_hz",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.15,
                                5,
                                "obj-9",
                                "attrui",
                                "attr",
                                "p_release_ms",
                                5,
                                "obj-9",
                                "attrui",
                                "float",
                                500.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "p_pump_db",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                -20.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "p_size",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.9300000000000002,
                                5,
                                "obj-111",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-16",
                                "attrui",
                                "attr",
                                "p_fuzz_hz",
                                5,
                                "obj-16",
                                "attrui",
                                "float",
                                800.0,
                                5,
                                "obj-18",
                                "attrui",
                                "attr",
                                "p_fuzz_db",
                                5,
                                "obj-18",
                                "attrui",
                                "float",
                                50.0,
                                5,
                                "obj-19",
                                "attrui",
                                "attr",
                                "p_mod_ms",
                                5,
                                "obj-19",
                                "attrui",
                                "float",
                                20.0,
                                5,
                                "obj-20",
                                "attrui",
                                "attr",
                                "p_damp_hz",
                                5,
                                "obj-20",
                                "attrui",
                                "float",
                                3000.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "p_gain_wet_db",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                -22.0
                            ]
                        },
                        {
                            "number": 5,
                            "data": [
                                5,
                                "obj-7",
                                "attrui",
                                "attr",
                                "p_mix_pct",
                                5,
                                "obj-7",
                                "attrui",
                                "float",
                                40.0,
                                5,
                                "obj-4",
                                "attrui",
                                "attr",
                                "p_decay_pct",
                                5,
                                "obj-4",
                                "attrui",
                                "float",
                                80.0,
                                5,
                                "obj-8",
                                "attrui",
                                "attr",
                                "p_mod_hz",
                                5,
                                "obj-8",
                                "attrui",
                                "float",
                                0.07000000000000002,
                                5,
                                "obj-9",
                                "attrui",
                                "attr",
                                "p_release_ms",
                                5,
                                "obj-9",
                                "attrui",
                                "float",
                                250.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "p_pump_db",
                                5,
                                "obj-10",
                                "attrui",
                                "float",
                                -24.0,
                                5,
                                "obj-11",
                                "attrui",
                                "attr",
                                "p_size",
                                5,
                                "obj-11",
                                "attrui",
                                "float",
                                0.7000000000000001,
                                5,
                                "obj-111",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-16",
                                "attrui",
                                "attr",
                                "p_fuzz_hz",
                                5,
                                "obj-16",
                                "attrui",
                                "float",
                                1000.0,
                                5,
                                "obj-18",
                                "attrui",
                                "attr",
                                "p_fuzz_db",
                                5,
                                "obj-18",
                                "attrui",
                                "float",
                                18.0,
                                5,
                                "obj-19",
                                "attrui",
                                "attr",
                                "p_mod_ms",
                                5,
                                "obj-19",
                                "attrui",
                                "float",
                                8.0,
                                5,
                                "obj-20",
                                "attrui",
                                "attr",
                                "p_damp_hz",
                                5,
                                "obj-20",
                                "attrui",
                                "float",
                                9000.0,
                                5,
                                "obj-12",
                                "attrui",
                                "attr",
                                "p_gain_wet_db",
                                5,
                                "obj-12",
                                "attrui",
                                "float",
                                -16.0
                            ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "p_damp_hz",
                    "bgcolor": [
                        0.22745098039215686,
                        0.4627450980392157,
                        0.22745098039215686,
                        1.0
                    ],
                    "id": "obj-20",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        271.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_mod_ms",
                    "bgcolor": [
                        0.22745098039215686,
                        0.4627450980392157,
                        0.22745098039215686,
                        1.0
                    ],
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        319.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_fuzz_db",
                    "bgcolor": [
                        0.5372549019607843,
                        0.34901960784313724,
                        0.34901960784313724,
                        1.0
                    ],
                    "id": "obj-18",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        363.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_fuzz_hz",
                    "bgcolor": [
                        0.5372549019607843,
                        0.34901960784313724,
                        0.34901960784313724,
                        1.0
                    ],
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        387.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
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
                            775.0,
                            147.0,
                            361.0,
                            452.0
                        ],
                        "openinpresentation": 1,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        410.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        530.0,
                                        160.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        530.0,
                                        198.0,
                                        102.0,
                                        23.0
                                    ],
                                    "text": "0, 0.05 10 0 150"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        613.0,
                                        277.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        239.0,
                                        172.0,
                                        22.0
                                    ],
                                    "text": "random 1000 @range 100 800"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        687.0,
                                        198.0,
                                        32.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        686.0,
                                        160.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        348.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        380.0,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        687.0,
                                        323.0,
                                        95.0,
                                        23.0
                                    ],
                                    "text": "0, 0.05 10 0 80"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        687.0,
                                        348.0,
                                        36.0,
                                        23.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        314.0,
                                        66.0,
                                        22.0
                                    ],
                                    "text": "cycle~ 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        418.0,
                                        254.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "*~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        418.0,
                                        289.0,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        492.0,
                                        229.0,
                                        95.0,
                                        23.0
                                    ],
                                    "text": "0, 0.05 10 0 40"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        492.0,
                                        254.0,
                                        36.0,
                                        23.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        418.0,
                                        186.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "rand~ 6000"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-86",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        492.0,
                                        160.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        13.0,
                                        153.0,
                                        35.0,
                                        22.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        12.0,
                                        47.0,
                                        35.0,
                                        22.0
                                    ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        14.0,
                                        97.0,
                                        29.5,
                                        22.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        14.0,
                                        123.0,
                                        50.0,
                                        22.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        13.0,
                                        17.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        14.0,
                                        67.0,
                                        59.0,
                                        22.0
                                    ],
                                    "text": "random 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        14.0,
                                        40.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "metro 90000"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 41.0,
                                    "data": {
                                        "clips": []
                                    },
                                    "id": "obj-91",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal",
                                        "",
                                        "dictionary"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        13.0,
                                        186.0,
                                        388.0,
                                        84.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        12.0,
                                        80.0,
                                        332.0,
                                        344.0
                                    ],
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
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        14.0,
                                        5.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        109.0,
                                        571.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        13.0,
                                        571.0,
                                        30.0,
                                        30.0
                                    ]
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
                                    "source": [
                                        "obj-1",
                                        0
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
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-112",
                                        0
                                    ],
                                    "source": [
                                        "obj-105",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-91",
                                        0
                                    ],
                                    "source": [
                                        "obj-109",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-10",
                                        0
                                    ],
                                    "source": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-109",
                                        0
                                    ],
                                    "source": [
                                        "obj-112",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-91",
                                        0
                                    ],
                                    "source": [
                                        "obj-117",
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
                                        "obj-12",
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
                                        "obj-13",
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
                                    "order": 0,
                                    "source": [
                                        "obj-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-28",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-14",
                                        0
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
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-29",
                                        1
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
                                        "obj-14",
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
                                        "obj-13",
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
                                        "obj-27",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-29",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-28",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-29",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        0
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
                                        "obj-2",
                                        1
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
                                        "obj-94",
                                        0
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
                                        "obj-8",
                                        0
                                    ],
                                    "source": [
                                        "obj-7",
                                        0
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
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-9",
                                        0
                                    ],
                                    "source": [
                                        "obj-8",
                                        1
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
                                        "obj-86",
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
                                        "obj-9",
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
                                        "obj-91",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-28",
                                        0
                                    ],
                                    "source": [
                                        "obj-91",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-105",
                                        0
                                    ],
                                    "source": [
                                        "obj-94",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        50.0,
                        192.0,
                        157.0,
                        22.0
                    ],
                    "text": "p -sfplayer-hihat-"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        50.0,
                        162.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        143.0,
                        161.0,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        189.0,
                        161.0,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        96.0,
                        161.0,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "p_size",
                    "bgcolor": [
                        0.22745098039215686,
                        0.4627450980392157,
                        0.22745098039215686,
                        1.0
                    ],
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        222.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_pump_db",
                    "bgcolor": [
                        0.34901960784313724,
                        0.4745098039215686,
                        0.5372549019607843,
                        1.0
                    ],
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        442.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_release_ms",
                    "bgcolor": [
                        0.34901960784313724,
                        0.4745098039215686,
                        0.5372549019607843,
                        1.0
                    ],
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        467.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_mod_hz",
                    "bgcolor": [
                        0.22745098039215686,
                        0.4627450980392157,
                        0.22745098039215686,
                        1.0
                    ],
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        295.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_decay_pct",
                    "bgcolor": [
                        0.22745098039215686,
                        0.4627450980392157,
                        0.22745098039215686,
                        1.0
                    ],
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        246.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "attr": "p_mix_pct",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        274.0,
                        183.0,
                        195.0,
                        22.0
                    ],
                    "text_width": 131.0
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        50.0,
                        548.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
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
                        50.0,
                        385.0,
                        48.0,
                        136.0
                    ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -14
                            ],
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
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        50.0,
                        342.0,
                        157.0,
                        22.0
                    ],
                    "text": "gen~ @gen frost-machine",
                    "varname": "gen~_AA"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        1
                    ],
                    "source": [
                        "obj-1",
                        1
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
                    "hidden": 1,
                    "source": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
                        2
                    ],
                    "source": [
                        "obj-100",
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
                        "obj-29",
                        0
                    ],
                    "source": [
                        "obj-111",
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
                    "hidden": 1,
                    "source": [
                        "obj-12",
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
                        "obj-13",
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
                    "hidden": 1,
                    "source": [
                        "obj-16",
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
                    "hidden": 1,
                    "source": [
                        "obj-18",
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
                    "hidden": 1,
                    "source": [
                        "obj-19",
                        0
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
                        "obj-2",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
                        1
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
                        "obj-1",
                        1
                    ],
                    "source": [
                        "obj-29",
                        1
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
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-3",
                        1
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
                        "obj-3",
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
                    "hidden": 1,
                    "source": [
                        "obj-4",
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
                        "obj-1",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
                        3
                    ],
                    "source": [
                        "obj-86",
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
                    "hidden": 1,
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-3": [
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