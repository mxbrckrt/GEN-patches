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
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 208.0, 404.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 208.0, 436.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-attrui", "attrui", "attr", "masking", 5, "obj-attrui", "attrui", "float", 0.25, 5, "obj-1", "attrui", "attr", "f0", 5, "obj-1", "attrui", "float", 8.0, 5, "obj-2", "attrui", "attr", "formant_f", 5, "obj-2", "attrui", "float", 500.0, 5, "obj-3", "attrui", "attr", "duty_ratio", 5, "obj-3", "attrui", "float", 0.2, 5, "obj-4", "attrui", "attr", "wave_shape", 5, "obj-4", "attrui", "float", 0.030000000000000006, 5, "obj-6", "number", "float", 5041.0, 5, "obj-7", "attrui", "attr", "pan_spread", 5, "obj-7", "attrui", "float", 0.5 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-attrui", "attrui", "attr", "masking", 5, "obj-attrui", "attrui", "float", 0.4, 5, "obj-1", "attrui", "attr", "f0", 5, "obj-1", "attrui", "float", 83.0, 5, "obj-2", "attrui", "attr", "formant_f", 5, "obj-2", "attrui", "float", 8000.0, 5, "obj-3", "attrui", "attr", "duty_ratio", 5, "obj-3", "attrui", "float", 0.3750000000000001, 5, "obj-4", "attrui", "attr", "wave_shape", 5, "obj-4", "attrui", "float", 2.8000000000000003, 5, "obj-6", "number", "float", 5041.0, 5, "obj-7", "attrui", "attr", "pan_spread", 5, "obj-7", "attrui", "float", 0.25000000000000006 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-attrui", "attrui", "attr", "masking", 5, "obj-attrui", "attrui", "float", 0.04, 5, "obj-1", "attrui", "attr", "f0", 5, "obj-1", "attrui", "float", 85.0, 5, "obj-2", "attrui", "attr", "formant_f", 5, "obj-2", "attrui", "float", 100.0, 5, "obj-3", "attrui", "attr", "duty_ratio", 5, "obj-3", "attrui", "float", 0.3750000000000001, 5, "obj-4", "attrui", "attr", "wave_shape", 5, "obj-4", "attrui", "float", 3.0, 5, "obj-6", "number", "float", 5041.0, 5, "obj-7", "attrui", "attr", "pan_spread", 5, "obj-7", "attrui", "float", 1.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-attrui", "attrui", "attr", "masking", 5, "obj-attrui", "attrui", "float", 0.6, 5, "obj-1", "attrui", "attr", "f0", 5, "obj-1", "attrui", "float", 250.0, 5, "obj-2", "attrui", "attr", "formant_f", 5, "obj-2", "attrui", "float", 995.0, 5, "obj-3", "attrui", "attr", "duty_ratio", 5, "obj-3", "attrui", "float", 0.29, 5, "obj-4", "attrui", "attr", "wave_shape", 5, "obj-4", "attrui", "float", 2.0, 5, "obj-6", "number", "float", 5041.0, 5, "obj-7", "attrui", "attr", "pan_spread", 5, "obj-7", "attrui", "float", 0.7000000000000002 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "attr": "pan_spread",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 231.0, 280.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 291.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "wave_shape",
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 183.0, 280.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "duty_ratio",
                    "id": "obj-3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 159.0, 280.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "formant_f",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 135.0, 280.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "f0",
                    "id": "obj-1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 111.0, 280.0, 22.0 ]
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
                    "patching_rect": [ 30.0, 20.0, 207.0, 47.0 ],
                    "text": "Pulsar synth"
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
                    "patching_rect": [ 48.0, 69.0, 171.0, 24.0 ],
                    "text": "Not your regular pulsar"
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 118.0, 538.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 118.0, 368.0, 48.0, 136.0 ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
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
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 118.0, 323.0, 140.0, 22.0 ],
                    "text": "gen~ @gen pulsar-synth"
                }
            },
            {
                "box": {
                    "attr": "masking",
                    "id": "obj-attrui",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 207.0, 280.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-sig2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 273.0, 323.0, 66.0, 22.0 ],
                    "text": "cycle~ 800"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig2", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-attrui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 1 ],
                    "source": [ "obj-gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ezdac", 0 ],
                    "source": [ "obj-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 1 ],
                    "source": [ "obj-gen", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain", 0 ],
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 1 ],
                    "source": [ "obj-sig2", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [ "live.gain~", "live.gain~", 0 ],
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