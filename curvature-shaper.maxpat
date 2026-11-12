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
                    "fontface": 0,
                    "fontsize": 36.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 281.0, 47.0 ],
                    "text": "curvature-shaper"
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
                    "patching_rect": [ 30.0, 92.0, 349.0, 24.0 ],
                    "text": "Symmetric S-Curve & Exact Inverse Interpolator"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 398.0, 133.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-mode",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 168.0, 171.0, 20.0 ],
                    "text": "0: Phasor~ Ramp  |  1: Manual"
                }
            },
            {
                "box": {
                    "id": "obj-mode",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 37.0, 190.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-mode-plus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 37.0, 225.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 82.0, 191.0, 62.0, 22.0 ],
                    "text": "phasor~ 1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-manual-num",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 127.0, 225.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 127.0, 255.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 37.0, 290.0, 109.0, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-shape",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 199.0, 168.0, 33.0 ],
                    "text": "Shape Presets (-1: Inv S-Curve, 0: Lin, +1: S-Curve)"
                }
            },
            {
                "box": {
                    "id": "obj-p-m1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 203.0, 240.0, 32.0, 22.0 ],
                    "text": "-1."
                }
            },
            {
                "box": {
                    "id": "obj-p-m05",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 243.0, 240.0, 35.0, 22.0 ],
                    "text": "-0.5"
                }
            },
            {
                "box": {
                    "id": "obj-p-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 286.0, 240.0, 29.5, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-p-05",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 323.0, 240.0, 32.0, 22.0 ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "id": "obj-p-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 363.0, 240.0, 29.5, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-shape-num",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 203.0, 275.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-msg-shape",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 203.0, 320.0, 61.0, 22.0 ],
                    "text": "shape $1"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-a",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 398.0, 217.0, 50.0, 20.0 ],
                    "text": "Start a"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-a-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 398.0, 240.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-msg-a",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 398.0, 320.0, 37.0, 22.0 ],
                    "text": "a $1"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-b",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 455.0, 217.0, 50.0, 20.0 ],
                    "text": "End b"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-b-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 455.0, 240.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-msg-b",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 455.0, 320.0, 37.0, 22.0 ],
                    "text": "b $1"
                }
            },
            {
                "box": {
                    "id": "obj-lbl-steep",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 512.0, 217.0, 70.0, 20.0 ],
                    "text": "Steepness"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-steep-num",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 512.0, 240.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-msg-steep",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 512.0, 320.0, 80.0, 22.0 ],
                    "text": "steepness $1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-init-a",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 398.0, 185.0, 29.5, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-init-b",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 455.0, 185.0, 29.5, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-init-steep",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 512.0, 185.0, 29.5, 22.0 ],
                    "text": "4."
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 37.0, 380.0, 269.0, 22.0 ],
                    "text": "gen~ @gen curvature-shaper"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-num-out",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 67.0, 418.0, 85.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-lbl-sc1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 455.0, 200.0, 20.0 ],
                    "text": "Out 1: Interpolated (a to b)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06, 0.08, 0.11, 1.0 ],
                    "bufsize": 256,
                    "calccount": 16,
                    "fgcolor": [ 0.3, 0.9, 0.5, 1.0 ],
                    "gridcolor": [ 0.2, 0.25, 0.3, 0.35 ],
                    "id": "obj-scope-interp",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 480.0, 118.0, 92.0 ],
                    "range": [ -0.1, 1.1 ]
                }
            },
            {
                "box": {
                    "id": "obj-lbl-sc2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 287.0, 455.0, 240.0, 20.0 ],
                    "text": "Out 2: Normalized Transfer Curve (0..1)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06, 0.08, 0.11, 1.0 ],
                    "bufsize": 256,
                    "calccount": 16,
                    "fgcolor": [ 0.22, 0.74, 0.97, 1.0 ],
                    "gridcolor": [ 0.2, 0.25, 0.3, 0.35 ],
                    "id": "obj-scope-norm",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 287.0, 480.0, 118.0, 92.0 ],
                    "range": [ -0.1, 1.1 ]
                }
            },
            {
                "box": {
                    "id": "obj-ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 429.0, 503.5, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-lbl-dac",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 558.5, 121.0, 20.0 ],
                    "text": "Turn Audio ON to run"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-msg-a", 0 ],
                    "source": [ "obj-a-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-b", 0 ],
                    "source": [ "obj-b-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-num-out", 0 ],
                    "order": 0,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-interp", 0 ],
                    "order": 1,
                    "source": [ "obj-gen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scope-norm", 0 ],
                    "source": [ "obj-gen", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a-num", 0 ],
                    "hidden": 1,
                    "source": [ "obj-init-a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b-num", 0 ],
                    "hidden": 1,
                    "source": [ "obj-init-b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-steep-num", 0 ],
                    "hidden": 1,
                    "source": [ "obj-init-steep", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-a", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-b", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-steep", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-p-05", 0 ],
                    "hidden": 1,
                    "order": 3,
                    "source": [ "obj-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sig", 0 ],
                    "source": [ "obj-manual-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-mode-plus", 0 ],
                    "source": [ "obj-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel", 0 ],
                    "source": [ "obj-mode-plus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 407.5, 367.5, 46.5, 367.5 ],
                    "source": [ "obj-msg-a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 464.5, 367.5, 46.5, 367.5 ],
                    "source": [ "obj-msg-b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 212.5, 367.5, 46.5, 367.5 ],
                    "source": [ "obj-msg-shape", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "midpoints": [ 521.5, 367.5, 46.5, 367.5 ],
                    "source": [ "obj-msg-steep", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-num", 0 ],
                    "midpoints": [ 295.5, 268.5, 212.5, 268.5 ],
                    "source": [ "obj-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-num", 0 ],
                    "midpoints": [ 332.5, 268.5, 212.5, 268.5 ],
                    "source": [ "obj-p-05", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-num", 0 ],
                    "midpoints": [ 372.5, 268.5, 212.5, 268.5 ],
                    "source": [ "obj-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-num", 0 ],
                    "midpoints": [ 252.5, 268.5, 212.5, 268.5 ],
                    "source": [ "obj-p-m05", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-num", 0 ],
                    "source": [ "obj-p-m1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel", 1 ],
                    "source": [ "obj-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gen", 0 ],
                    "source": [ "obj-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-shape", 0 ],
                    "source": [ "obj-shape-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-sel", 2 ],
                    "source": [ "obj-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-msg-steep", 0 ],
                    "source": [ "obj-steep-num", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}