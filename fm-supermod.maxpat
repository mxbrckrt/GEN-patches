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
        "openrect": [ 50.0, 50.0, 900.0, 800.0 ],
        "openrectmode": 0,
        "boxes": [
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-36",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 739.0, 406.0, 71.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "free", "harmonic", "risset" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "quantize",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "quantize",
                            "parameter_type": 2
                        }
                    },
                    "varname": "quantize"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 739.0, 448.0, 71.0, 22.0 ],
                    "text": "quantize $1"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 465.0, 227.0, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 425.0, 194.0, 59.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 106.0, 287.0, 33.0, 22.0 ],
                    "text": "== 4"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 255.0, 100.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 739.0, 168.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "spread",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "spread",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "spread"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 739.0, 235.0, 102.0, 22.0 ],
                    "text": "stereo_spread $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-11",
                    "maxclass": "flonum",
                    "maximum": 16000.0,
                    "minimum": 40.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 325.0, 426.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 312.0, 643.0, 300.0, 100.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 24,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 425.0, 137.0, 280.0, 45.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "maximum": 16000.0,
                    "minimum": 40.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 224.87499999999997, 424.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 25.0, 221.0, 82.14285714285714, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "audio", "sinewave", "noise", "midi" ],
                            "parameter_longname": "live.menu[1]",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu[1]"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 654.0, 397.0, 20.535714285714285, 20.535714285714285 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 560.0, 246.0, 111.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "ring mod", "time/ doppler", "adaptive audio" ],
                            "parameter_longname": "live.menu",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 448.0, 64.0, 22.0 ],
                    "text": "filter_lp $1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "hint": "Treat in1 as MIDI pitch, 0: Treat in1 as Audio",
                    "id": "obj-13",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 556.0, 397.0, 20.535714285714285, 20.535714285714285 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "midiornot",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "midiornot",
                            "parameter_type": 2
                        }
                    },
                    "varname": "midiornot"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 448.0, 91.0, 22.0 ],
                    "text": "use_note_in $1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 643.0, 47.0, 22.0 ],
                    "text": "clearall"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 164.0, 643.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 164.0, 694.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-90", "live.dial", "float", 110.0, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.4140000343322754, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 1.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 45, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 41.73228454589844, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-90", "live.dial", "float", 293.6647644042969, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 11.344802856445312, 5, "obj-26", "live.dial", "float", 3.9445804955740016e-10, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 1.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 62, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 100.0, 5, "obj-36", "live.menu", "float", 2.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-90", "live.dial", "float", 110.0, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 3.3159842491149902, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 2.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 45, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 93.70079040527344, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-90", "live.dial", "float", 41.20344543457031, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 3.173504114151001, 5, "obj-26", "live.dial", "float", 2.9770724773406982, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 28, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 30.0, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-90", "live.dial", "float", 43.65353012084961, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 10.0, 5, "obj-26", "live.dial", "float", 4.182594299316406, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.7716535329818726, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 2.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 1.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 29, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 0.0, 5, "obj-36", "live.menu", "float", 2.0 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-90", "live.dial", "float", 65.4063949584961, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 2.358566999435425, 5, "obj-26", "live.dial", "float", 2.511708974838257, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.7874016165733337, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 3.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 40.0, 5, "obj-1", "live.dial", "float", 100.0, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-90", "live.dial", "float", 73.41619110107422, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 6.467432975769043, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.6929134130477905, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 3.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 38, 5, "obj-11", "number", "float", 40.0, 5, "obj-1", "live.dial", "float", 85.43306732177734, 5, "obj-36", "live.menu", "float", 2.0 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-90", "live.dial", "float", 220.0, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 11.426409721374512, 5, "obj-26", "live.dial", "float", 0.44682690501213074, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.6929134130477905, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 3.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 57, 5, "obj-11", "number", "float", 40.0, 5, "obj-1", "live.dial", "float", 50.0, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 17,
                            "data": [ 5, "obj-90", "live.dial", "float", 36.70809555053711, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.4140000343322754, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 2.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 26, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 50.0, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 18,
                            "data": [ 5, "obj-90", "live.dial", "float", 65.4063949584961, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.4140000343322754, 5, "obj-26", "live.dial", "float", 2.318079948425293, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.4566929042339325, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 3.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 2.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 80.0, 5, "obj-36", "live.menu", "float", 0.0 ]
                        },
                        {
                            "number": 19,
                            "data": [ 5, "obj-90", "live.dial", "float", 65.4063949584961, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.4140000343322754, 5, "obj-26", "live.dial", "float", 3.160285472869873, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.4094488322734833, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 1.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 2.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 50.0, 5, "obj-36", "live.menu", "float", 2.0 ]
                        },
                        {
                            "number": 20,
                            "data": [ 5, "obj-90", "live.dial", "float", 65.4063949584961, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 2.83085036277771, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-29", "playlist~", "preset_count", 1, 7, "obj-29", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-29", "playlist~", "preset_clipstate", 1, "absolutepath", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "filename", "FemVoice.aif", 7, "obj-29", "playlist~", "preset_clipstate", 1, "loop", 1, 8, "obj-29", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-29", "playlist~", "preset_clipstate", 1, "id", "u241001144", 7, "obj-29", "playlist~", "preset_content", 1, "loop", 1, 4, "obj-29", "playlist~", "preset_execute", 5, "obj-32", "live.dial", "float", 0.6771653890609741, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 1.0, 5, "obj-19", "live.toggle", "float", 1.0, 5, "obj-20", "live.menu", "float", 2.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 36, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 50.0, 5, "obj-36", "live.menu", "float", 1.0 ]
                        },
                        {
                            "number": 24,
                            "data": [ 5, "obj-90", "live.dial", "float", 110.0, 5, "obj-17", "live.dial", "float", 100.0, 5, "obj-24", "live.dial", "float", 1.4140000343322754, 5, "obj-26", "live.dial", "float", 1.7999999523162842, 5, "obj-32", "live.dial", "float", 0.0, 5, "obj-13", "live.toggle", "float", 0.0, 5, "obj-16", "live.menu", "float", 0.0, 5, "obj-19", "live.toggle", "float", 0.0, 5, "obj-20", "live.menu", "float", 0.0, 5, "obj-22", "number", "float", 100.0, 5, "obj-23", "kslider", "int", 45, 5, "obj-11", "number", "float", 450.0, 5, "obj-1", "live.dial", "float", 41.73228454589844 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 124.9375, 314.57142857142856, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.357142857142854, 72.32142857142857, 430.35714285714283, 47.0 ],
                    "text": "Quadrature Cross-Feedback FM Engine & Live Audio Modulator (Ring Mod / Doppler FM / Adaptive)"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.357142857142854, 19.642857142857142, 327.0, 47.0 ],
                    "text": "FM Supermodulator"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 504.0, 496.0, 29.0, 22.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 815.0, 274.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "feedback",
                            "parameter_mmax": 2.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "feedback",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "feedback"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 341.0, 74.0, 22.0 ],
                    "text": "feedback $1"
                }
            },
            {
                "box": {
                    "clipheight": 45.42857142857142,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u241001144",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-29",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 124.9375, 342.57142857142856, 222.32142857142856, 46.42857142857142 ],
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
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-26",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 739.0, 274.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.333,
                            "parameter_initial": [ 1.8000000000000003 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "index",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "index",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "index"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 739.0, 341.0, 74.0, 22.0 ],
                    "text": "fm_index $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 680.0, 274.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.414 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ratio",
                            "parameter_mmax": 30.0,
                            "parameter_mmin": 0.01,
                            "parameter_modmode": 4,
                            "parameter_shortname": "ratio",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "ratio"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 341.0, 49.0, 22.0 ],
                    "text": "ratio $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 504.0, 274.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "mix",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "mix",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "mix"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 504.0, 341.0, 44.0, 22.0 ],
                    "text": "mix $1"
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
                    "patching_rect": [ 25.0, 623.0, 94.0, 136.0 ],
                    "relative": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
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
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 774.0, 37.75, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "activeneedlecolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-90",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 621.0, 274.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 2.22222,
                            "parameter_initial": [ 60.00000000000001 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "freq",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 2,
                            "parameter_shortname": "freq",
                            "parameter_speedlim": 1.666,
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "freq"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 621.0, 341.0, 46.0, 22.0 ],
                    "text": "freq $1"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 341.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "id": "obj-cycle",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 224.87499999999997, 454.0, 66.0, 22.0 ],
                    "text": "cycle~ 100"
                }
            },
            {
                "box": {
                    "id": "obj-noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 325.0, 458.0, 56.0, 22.0 ],
                    "text": "rand~ 40"
                }
            },
            {
                "box": {
                    "id": "obj-sig-note",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 425.0, 391.0, 48.0, 22.0 ],
                    "text": "sig~ 60"
                }
            },
            {
                "box": {
                    "id": "obj-sel-L",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 496.0, 418.74999999999994, 22.0 ],
                    "text": "selector~ 4 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gen",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 25.0, 570.0, 93.99999999999993, 35.0 ],
                    "text": "gen~ @gen fm-supermod"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-noise", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 663.5, 482.7678571428572, 513.5, 482.7678571428572 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-cycle", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 689.5, 386.7182539682541, 513.5, 386.7182539682541 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 748.5, 386.7182539682541, 513.5, 386.7182539682541 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "hidden": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 1 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig-note", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "hidden": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 824.5, 386.9199146609459, 513.5, 386.9199146609459 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 513.5, 557.946428571428, 34.5, 557.946428571428 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 748.5, 483.0, 513.5, 483.0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 569.5, 387.37513950892867, 513.5, 387.37513950892867 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 630.5, 386.7182539682541, 513.5, 386.7182539682541 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "midpoints": [ 565.5, 482.7678571428572, 513.5, 482.7678571428572 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 2 ],
                    "source": [ "obj-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "midpoints": [ 34.5, 623.6428571428571, 321.5, 623.6428571428571 ],
                    "order": 0,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-gen", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 3 ],
                    "source": [ "obj-noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 1 ],
                    "order": 0,
                    "source": [ "obj-sel-L", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "order": 1,
                    "source": [ "obj-sel-L", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel-L", 4 ],
                    "source": [ "obj-sig-note", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "spread", "spread", 0 ],
            "obj-12": [ "live.gain~", "live.gain~", 0 ],
            "obj-13": [ "midiornot", "midiornot", 0 ],
            "obj-16": [ "live.menu", "live.menu", 0 ],
            "obj-17": [ "mix", "mix", 0 ],
            "obj-19": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-20": [ "live.menu[1]", "live.menu", 0 ],
            "obj-24": [ "ratio", "ratio", 0 ],
            "obj-26": [ "index", "index", 0 ],
            "obj-32": [ "feedback", "feedback", 0 ],
            "obj-36": [ "quantize", "quantize", 0 ],
            "obj-90": [ "freq", "freq", 0 ],
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