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
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 346.0, 366.0, 82.0, 20.0 ],
                    "text": "external clock"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 497.5, 412.0, 63.0, 22.0 ],
                    "text": ">~ 0.0001"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 497.5, 470.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 497.5, 438.0, 42.0, 22.0 ],
                    "text": "edge~"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 483.0, 537.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-28",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 541.0, 470.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 499.0, 501.0, 61.0, 22.0 ],
                    "text": "*~ 0.1"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 16.0, 360.0, 47.0 ],
                    "text": "Offset Spline Random"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 41.0, 445.0, 321.99999999999994, 22.0 ],
                    "text": "gen~ @gen offset-spline-random"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 358.0, 479.0, 51.0, 20.0 ],
                    "text": "stepped"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 257.0, 479.0, 48.0, 20.0 ],
                    "text": "smooth"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 156.0, 479.0, 38.0, 20.0 ],
                    "text": "pulse"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 55.0, 479.0, 38.0, 20.0 ],
                    "text": "result"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-4",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 38.5, 65.0, 525.0, 127.0 ],
                    "text": "Generates a continuous audio signal.\nAdds a smoothed random signal around it's position\nThe randomness has an automatic and external trigger mode. The frequency, range and amplitude parameters can be changed\nHermite Spline-Interpolated Smooth Stochastic Generator"
                }
            },
            {
                "box": {
                    "attr": "trigmode",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 41.0, 331.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-11",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 388.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.7176470588235294, 0.7019607843137254, 0.5 ],
                    "activetextcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activetextoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 502.0, 223.0, 60.0, 45.428577303886414 ],
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
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "automatic",
                    "textcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "textoffcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "texton": "external",
                    "varname": "live.text[1]"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 502.0, 279.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 502.0, 321.0, 72.0, 22.0 ],
                    "text": "trigmode $1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 344.0, 412.0, 69.0, 22.0 ],
                    "text": "phasor~ 50"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.7176470588235294, 0.7019607843137254, 0.5 ],
                    "activetextcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activetextoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 439.0, 223.0, 60.0, 45.428577303886414 ],
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
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.text",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "stepped",
                    "textcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "textoffcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "texton": "smooth",
                    "varname": "live.text"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 439.0, 279.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.0, 321.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "attr": "mode",
                    "id": "obj-45",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 41.0, 304.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fgcolor": [ 1.0, 0.0, 1.0, 1.0 ],
                    "gridcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-44",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 344.0, 501.0, 75.00000178813934, 69.28571593761444 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-43",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 63.0, 412.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-42",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 208.0, 279.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 276.0, 279.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-39",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 348.0, 279.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 347.0, 223.0, 51.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.333,
                            "parameter_initial": [ 2 ],
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
                    "outlettype": [ "" ],
                    "patching_rect": [ 348.0, 321.0, 78.0, 22.0 ],
                    "text": "frequency $1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 276.0, 223.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "range",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "range",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "range"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 276.0, 321.0, 56.0, 22.0 ],
                    "text": "range $1"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 208.0, 223.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "amp",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "amp",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "amp"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 63.0, 362.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "vlaue",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": -1.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "vlaue",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vlaue"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 208.0, 321.0, 49.0, 22.0 ],
                    "text": "amp $1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fgcolor": [ 0.9994240403, 0.9855536819, 0.0, 1.0 ],
                    "gridcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 243.0, 501.0, 75.00000178813934, 69.28571593761444 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fgcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "gridcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-15",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 142.0, 501.0, 75.00000178813934, 69.28571593761444 ]
                }
            },
            {
                "box": {
                    "attr": "amp",
                    "id": "obj-14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 41.0, 276.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bufsize": 256,
                    "calccount": 10,
                    "fgcolor": [ 0.0, 0.9768045545, 0.0, 1.0 ],
                    "gridcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-13",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 501.0, 75.29619878530502, 69.28571593761444 ]
                }
            },
            {
                "box": {
                    "attr": "range",
                    "id": "obj-29",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 41.0, 251.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "frequency",
                    "id": "obj-30",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 41.0, 223.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-10", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-10", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 217.5, 354.18636679649353, 50.5, 354.18636679649353 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "order": 0,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 285.5, 354.18636679649353, 50.5, 354.18636679649353 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 448.5, 354.18636679649353, 50.5, 354.18636679649353 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 357.5, 354.18636679649353, 50.5, 354.18636679649353 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 511.5, 354.18636679649353, 50.5, 354.18636679649353 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-22": [ "vlaue", "vlaue", 0 ],
            "obj-23": [ "amp", "amp", 0 ],
            "obj-24": [ "range", "range", 0 ],
            "obj-32": [ "frequency", "frequency", 0 ],
            "obj-5": [ "live.text", "live.text", 0 ],
            "obj-8": [ "live.text[1]", "live.text", 0 ],
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