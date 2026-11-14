#!/usr/bin/env python3
"""
Generate a rational, scientific, peer-review style HTML documentation for GEN-patches.
Characteristics:
- Strict alphabetical order by default and within any filtered subset.
- Concise, technical, non-hyperbolic language (scientific DSP documentation).
- Clean, restrained visual design (subtle slate/graphite palette, precise typography).
- Exact parameter declarations, I/O specifications, and signal-flow block diagrams
  synchronized with the normalized gendsp/*.gendsp and *.maxpat files.
"""

import os
import json

DOCS_DIR = os.path.join(os.path.dirname(__file__), "docs")
os.makedirs(DOCS_DIR, exist_ok=True)

# 21 Active DSP models synchronized with normalized .maxpat and gendsp/*.gendsp files
MODELS = [
    {
        "id": "fm-supermod",
        "name": "FM SuperMod",
        "title": "Quadrature Cross-Feedback FM Engine & Live Audio Modulator",
        "category": "processors",
        "inlets": ["Audio L / MIDI Note In", "Audio R / Modulator CV", "FM Index CV", "Feedback CV"],
        "outlets": ["Processed Audio L", "Processed Audio R"],
        "summary": "High-definition Frequency & Phase Modulation processor with quadrature carrier outputs, cross-coupled feedback, anti-aliasing reconstruction filter, and 3 distinct live audio modulation modes (Ring Mod, Doppler FM Delay, Adaptive FM).",
        "equations": [
            r"f_m = f_c \cdot \text{ratio}",
            r"\Delta f = f_c \cdot I_{fm} \cdot \sin(\omega_m t)",
            r"\phi_c = \int 2\pi (f_c + \Delta f) dt",
            r"y_{sin} = \sin(\phi_c + k_{fb} \cdot y_{cos}[n-1])",
            r"y_{cos} = \cos(\phi_c + k_{fb} \cdot y_{sin}[n-1])"
        ]
    },
    {
        "id": "aether-drift",
        "name": "Aether Drift",
        "title": "Parallel Stereo Delay & 8-Stage Cascaded Allpass Diffuser",
        "category": "reverbs",
        "category_label": "Spatial & Reverbs",
        "badge": "Delay Network / Reverb",
        "gendsp": "gendsp/aether-drift.gendsp",
        "maxpat": "aether-drift.maxpat",
        "description": "Parallel topology coupling a fractional stereo delay line to an 8-stage cascaded allpass diffusion network. Includes delay-to-reverb cross-injection, 1-pole high-frequency attenuation, and independent path gain scaling.",
        "dsp_paradigm": "Schroeder-Moorer parallel delay + 8-stage allpass series with sine modulation",
        "inlets": ["in1: Left audio channel", "in2: Right audio channel"],
        "outlets": ["out1: Processed left channel", "out2: Processed right channel"],
        "block_diagram": """[in1, in2] ──┬───────────────────────> (+) ──────────────────────────────────> [Mix Matrix] ──> [out1, out2]
             │                          ▲                                             ▲
             ├──> [Stereo Delay Line] ──┤                                             │
             │         ▲         │      │ (del_vol)                                   │
             │         └─[Damp]◄─┘      │                                             │
             │               │          │                                             │
             └───────────────┼──────────┴──> (del_to_rev) ──> [8x Cascaded Allpass] ──┘
                             │                                       ▲        (rev_vol)
                             │                                       └── [LFO Mod & Damp]""",
        "parameters": [
            {"name": "mix", "range": "0 – 100 %", "default": "50", "desc": "Dry/Wet balance ratio"},
            {"name": "gainout", "range": "-60 – 12 dB", "default": "0", "desc": "Output stage gain"},
            {"name": "del_vol", "range": "-60 – 6 dB", "default": "-6", "desc": "Delay line level in FX path"},
            {"name": "del_time", "range": "0 – 100 %", "default": "40", "desc": "Delay time mapping (0 to 2000 ms)"},
            {"name": "del_fb", "range": "0 – 100 %", "default": "60", "desc": "Delay loop feedback coefficient"},
            {"name": "del_damp", "range": "0 – 100 %", "default": "30", "desc": "Delay loop 1-pole lowpass cut"},
            {"name": "del_to_rev", "range": "0 – 100 %", "default": "50", "desc": "Cross-feed level into diffuser"},
            {"name": "rev_vol", "range": "-60 – 6 dB", "default": "-6", "desc": "Reverb level in FX path"},
            {"name": "rev_size", "range": "0 – 99 %", "default": "85", "desc": "Allpass loop scale factor"},
            {"name": "rev_diff", "range": "0 – 100 %", "default": "85", "desc": "Allpass coefficient magnitude"},
            {"name": "rev_damp", "range": "0 – 100 %", "default": "40", "desc": "Tank 1-pole high-frequency damping"},
            {"name": "rev_mod", "range": "0 – 100 %", "default": "40", "desc": "LFO delay modulation depth"}
        ]
    },
    {
        "id": "aether-particle",
        "name": "Aether Particle",
        "title": "4-Voice Asynchronous Granular Engine & 4x4 Hadamard FDN",
        "category": "granular",
        "category_label": "Granular & Microsound",
        "badge": "Granular / FDN",
        "gendsp": "gendsp/aether-particle.gendsp",
        "maxpat": "aether-particle.maxpat",
        "description": "Granular synthesis architecture pairing a 4-voice asynchronous circular buffer sampler (20 s memory, Gaussian Box-Muller position/density/size variance, pitch scaling, sample-rate reduction, freeze) with a 4x4 Hadamard Feedback Delay Network.",
        "dsp_paradigm": "Asynchronous multi-voice granular stream coupled to a unitary Hadamard 4x4 FDN",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Processed left output", "out2: Processed right output"],
        "block_diagram": """[in1, in2] ──(+)──> [20s Circular Buffer] <──────────────── (g_regen) ─┐
              ▲                 │                                        │
              │                 ▼ (4 Asynchronous Voices)                │
              │         [Grain Scheduler]                                │
              │         (Gaussian Jitter, Pitch, Crush, Skew Window)     │
              │                 │                                        │
              │                 ▼                                        │
              │         [Granular Sum] ────┬─────────────────────────────┼──> [DC Block + Limiter] ──> [out1, out2]
              │                            │ (r_mix)                     │
              │                            ▼                             │
              └──────────────── [4x4 Unitary Hadamard FDN] ──────────────┘
                                (4 Delay Lines + Tilt + Absorb + Mod)""",
        "parameters": [
            {"name": "g_density / g_std_density", "range": "0.001–60 Hz / 0–100%", "default": "4 / 20", "desc": "Mean firing frequency & Gaussian jitter"},
            {"name": "g_pos / g_std_pos", "range": "0–100 % / 0–100 %", "default": "10 / 5", "desc": "Buffer read offset & spray variance"},
            {"name": "g_size / g_std_size", "range": "2–2000 / 0–1000 ms", "default": "200 / 50", "desc": "Grain duration & Gaussian deviation"},
            {"name": "g_pitch / g_window / g_skew", "range": "-4–4 / 0–1 / 0–100%", "default": "1 / 0.5 / 0", "desc": "Playback speed ratio, window shape & skew"},
            {"name": "g_prob / g_crush / g_regen", "range": "0 – 100 %", "default": "100 / 30 / 40", "desc": "Emission probability, decimation & feedback"},
            {"name": "r_size / r_decay / r_absorb", "range": "0.5–100 / 0–110 / 0–100%", "default": "50 / 60 / 40", "desc": "FDN scale, feedback gain & high-freq damping"},
            {"name": "r_tilt / r_speed / r_depth", "range": "-1–1 / 0.1–10Hz / 0–20", "default": "0 / 1 / 2", "desc": "Spectral balance & chorus modulation"},
            {"name": "g_mix / r_mix / gainout", "range": "0–100% / -60–12dB", "default": "50 / 40 / 0", "desc": "Stage balances and final gain"},
            {"name": "freeze / clear", "range": "0 / 1", "default": "0 / 0", "desc": "Buffer write freeze & memory clear"}
        ]
    },
    {
        "id": "bernoulli-gate",
        "name": "Bernoulli Gate",
        "title": "Dual-Output Probabilistic Trigger & Gate Distributor",
        "category": "stochastic",
        "category_label": "Stochastic & Logic",
        "badge": "Stochastic Logic",
        "gendsp": "gendsp/bernoulli-gate.gendsp",
        "maxpat": "bernoulli-gate.maxpat",
        "description": "Discrete probability gate based on Bernoulli trials. Evaluates incoming triggers (phasor fall or bipolar zero-crossings) or internal periodic clock pulses against probability P(B). Routes single-sample impulses to Out 1 or Out 2, with latched binary state on Out 3.",
        "dsp_paradigm": "Phasor/zero-crossing detection with pseudo-random Bernoulli decision mapping",
        "inlets": ["in1: External clock/phasor/trigger signal"],
        "outlets": ["out1: Impulse on outcome A (1 sample)", "out2: Impulse on outcome B (1 sample)", "out3: Latched binary state (0=A, 1=B)"],
        "block_diagram": """[in1: Ext Trig] ──> [Phasor Fall || Zero-Crossing] ──┐
                                                      ├──> [Trigger Selector]
[Internal Clock] ─> [Phasor Acc (0.1..100Hz)] ────────┘            │
                                                                   ▼
                                                           [Uniform RNG: U(-1,1)]
                                                                   │
                                                     ┌─────────────┴─────────────┐
                                                     ▼                           ▼
                                               (U >= thresh)                (U < thresh)
                                                     │                           │
                                                     ▼                           ▼
                                             [out1: Pulse A]             [out2: Pulse B]
                                                     │                           │
                                                     └─────────> [SR Latch] <────┘
                                                                    │
                                                                    ▼
                                                           [out3: State (0/1)]""",
        "parameters": [
            {"name": "probability", "range": "0 – 1", "default": "0.5", "desc": "Probability weighting toward outcome B"},
            {"name": "trigmode", "range": "0 / 1", "default": "0", "desc": "0: External detector (in1), 1: Internal clock"},
            {"name": "frequency", "range": "0.1 – 100 Hz", "default": "1", "desc": "Internal clock rate"}
        ]
    },
    {
        "id": "cswitch-tremolo",
        "name": "CSwitch Tremolo",
        "title": "Granular Chopper & Anti-Lock Trapezoidal Modulator",
        "category": "modulation",
        "category_label": "Modulation & LFO",
        "badge": "Modulator / Filter",
        "gendsp": "gendsp/cswitch-tremolo.gendsp",
        "maxpat": "cswitch-tremolo.maxpat",
        "description": "Trapezoidal amplitude chopper and grain synchronizer. Incorporates anti-lock low-frequency accumulator logic down to 0.01 Hz, sample-and-hold resonant 2-pole bandpass filtering per grain, and equal-power pan distribution.",
        "dsp_paradigm": "Dynamic step-recalculated phase accumulator + trapezoidal gate + 2-pole S&H bandpass",
        "inlets": ["in1: Left audio channel", "in2: Right audio channel"],
        "outlets": ["out1: Modulated left channel", "out2: Modulated right channel", "out3: Grain start impulse trigger", "out4: Trapezoidal envelope (0–1 CV)"],
        "block_diagram": """[rate, jitter] ──> [Anti-Lock Phase Acc] ──┬──> [Grain Reset Detector] ──> [out3: Trig]
                                          │             │
                                          │             ▼
                                          │     [S&H Uniform RNG]
                                          │             │
                                          │             ▼
                                          │     [2-Pole Resonant BPF] <── [in1, in2]
                                          │             │
                                          ▼             ▼
                               [Trapezoidal Env Generator] ──> [out4: Envelope CV]
                                          │
                                          ▼
                               [VCA & Stereo Panner] ────────> [out1, out2]""",
        "parameters": [
            {"name": "rate", "range": "0.01 – 500 Hz", "default": "10", "desc": "Base modulation rate"},
            {"name": "time_rand", "range": "0 – 1", "default": "0", "desc": "Temporal jitter coefficient"},
            {"name": "pwm", "range": "0.01 – 0.99", "default": "0.5", "desc": "Duty cycle / gate width"},
            {"name": "slope", "range": "0 – 100 ms", "default": "2", "desc": "Trapezoidal ramp duration"},
            {"name": "depth", "range": "0 – 1", "default": "1", "desc": "Overall modulation depth"},
            {"name": "rand_pan", "range": "0 – 1", "default": "1", "desc": "S&H stereo pan width"},
            {"name": "filter_depth", "range": "0 – 1", "default": "1", "desc": "Resonant filter influence"},
            {"name": "min_freq / max_freq", "range": "20 – 20000 Hz", "default": "200 / 4000", "desc": "Filter cutoff boundaries"},
            {"name": "q", "range": "0.1 – 50", "default": "10", "desc": "Filter resonance Q factor"},
            {"name": "reset", "range": "0 / 1", "default": "0", "desc": "Instantaneous phase reset trigger"}
        ]
    },
    {
        "id": "curvature-shaper",
        "name": "Curvature Shaper",
        "title": "Symmetric S-Curve & Exact Inverse Interpolator",
        "category": "modulation",
        "category_label": "Modulation & LFO",
        "badge": "Transfer Function",
        "gendsp": "gendsp/curvature-shaper.gendsp",
        "maxpat": "curvature-shaper.maxpat",
        "description": "Interpolates between two target values (a, b) across a normalized ramp x in [0, 1] using a point-symmetric dual-curve function. Positive 'shape' yields an S-curve (exponential ease-in on entry, mirror inverse ease-out on exit); negative 'shape' yields its exact functional inverse f(-s, f(+s, x)) == x.",
        "dsp_paradigm": "Piecewise power S-curve with exponent p = 2^(shape * steepness) and mix(a, b, s)",
        "inlets": ["in1: Input phase / ramp (0.0 to 1.0)", "in2: Optional signal-rate shape modulation CV"],
        "outlets": ["out1: Interpolated value (a to b)", "out2: Normalized shaped curve (0.0 to 1.0)"],
        "block_diagram": """[in1: Ramp x (0..1)] ──> [Clamp 0..1] ──> (x < 0.5 ?)
                                            ├── TRUE  ──> [0.5 * (2x)^p] ────────┐
                                            └── FALSE ──> [1 - 0.5 * (2(1-x))^p] ┼──> [out2: Curve]
                                                              ▲                  │
[in2: Shape CV] ──(+)──> [p = 2^(shape * steepness)] ─────────┘                  ▼
                   ▲                                                   [mix(a, b, curve)] ──> [out1: Out]
             [Param shape]""",
        "parameters": [
            {"name": "a / b", "range": "Unbounded", "default": "0 / 1", "desc": "Interpolation start (x=0) and end (x=1) values"},
            {"name": "shape", "range": "-1 – 1", "default": "0", "desc": "Bipolar curve (+: S-curve, 0: linear, -: exact inverse)"},
            {"name": "steepness", "range": "0.5 – 10", "default": "4.0", "desc": "Exponent multiplier p = 2^(shape * steepness)"},
            {"name": "clamp_in", "range": "0 / 1", "default": "1", "desc": "Clamp input ramp strictly to [0, 1]"}
        ]
    },
    {
        "id": "delays-delays",
        "name": "Delays Delays",
        "title": "32-Tap Delay Line & 16-Channel Spatialization Engine",
        "category": "delays",
        "category_label": "Delays & Echoes",
        "badge": "Multitap Delay",
        "gendsp": "gendsp/delays-delays.gendsp",
        "maxpat": "delays-delays.maxpat",
        "description": "Multitap delay architecture comprising 32 discrete taps with 16-channel spatial routing. Features configurable ladder lowpass/highpass spectral mapping across taps, transient-driven sidechain ducking, glissando smoothing, and sample-accurate synchronization triggers.",
        "dsp_paradigm": "32-tap delay line + 16 discrete spatial outputs + spectral tap filtering + ducking",
        "inlets": ["in1: Left audio channel", "in2: Right audio channel"],
        "outlets": ["out1..16: 16-channel spatial or stereo outputs", "out17: Master clock trigger", "out18: Tap impulse trigger", "out19: Current tap index (0..31)", "out20: Held tap amplitude"],
        "block_diagram": """[in1, in2] ──(+)──> [Delay Buffer] ──┬──> [32 Non-Uniform Taps] ──> [Per-Tap Ladder LPF/HPF]
              ▲                      │                                         │
              │                      │                                         ▼
              └── [Feedback Gain] ◄──┴── [Ducking VCA] <── [Sidechain Env]   [16-Ch / Stereo Matrix]
                                                                               │
                                                                               ▼
                                                                      [out1 .. out16] + [Sync out17..20]""",
        "parameters": [
            {"name": "mix / gain", "range": "0–1 / 0–5", "default": "0.5 / 1.0", "desc": "Constant-power Dry/Wet mix & tap drive"},
            {"name": "mc_mode", "range": "0 / 1", "default": "0", "desc": "0: Stereo (Out 1-2), 1: 16-Ch Spatial (Out 1-16)"},
            {"name": "spread / offset", "range": "-100–100 / 0–1", "default": "0 / 0", "desc": "Stereo width / rotation speed & spatial offset"},
            {"name": "feedback / ducking", "range": "0–100% / 0–1", "default": "0 / 0", "desc": "Loop regeneration & sidechain auto-pumping"},
            {"name": "smooth_time / clear", "range": "0–0.99 / 0–1", "default": "0.9 / 0", "desc": "Tap delay glissando inertia & buffer purge"},
            {"name": "f_type / f_direction", "range": "0–1 / 0–3", "default": "0 / 0", "desc": "Filter shape (LP/HP) & tap sweep direction"},
            {"name": "f_start / f_end", "range": "Hz", "default": "16000 / 800", "desc": "Spectral cutoff sweep endpoints"},
            {"name": "f_mix / res", "range": "0 – 100 %", "default": "0 / 0", "desc": "Filter wet blend & resonance Q"}
        ]
    },
    {
        "id": "erbeverb-clone",
        "name": "Erbeverb Clone",
        "title": "4x4 Unitary Hadamard FDN Reverb with Spectral Tilt",
        "category": "reverbs",
        "category_label": "Spatial & Reverbs",
        "badge": "Reverb Network",
        "gendsp": "gendsp/erbeverb-clone.gendsp",
        "maxpat": "erbeverb-clone.maxpat",
        "description": "Continuous-topology reverberation network inspired by Tom Erbe's Erbe-Verb algorithm. Uses 4 mutually prime modulated delay lines, a normalized unitary 4x4 Hadamard matrix, predelay, high-frequency wall absorption, spectral tilt, and soft tanh saturation.",
        "dsp_paradigm": "4x4 Hadamard FDN with prime delay sets, Doppler chorus & unified tilt/absorption filtering",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Processed left output", "out2: Processed right output"],
        "block_diagram": """[in1, in2] ──> [Predelay] ──(+)──> [4 Prime Modulated Delay Lines] ──> [Tanh Soft Clip]
                             ▲                  │                                  │
                             │                  ▼                                  │
                             │         [4x4 Hadamard Matrix]                       │
                             │                  │                                  │
                             │                  ▼                                  │
                             └── [Wall Absorb & Spectral Tilt] <───────────────────┘
                                                │
                                                ▼
                                   [Dry / Wet Mix Matrix] ──> [out1, out2]""",
        "parameters": [
            {"name": "size", "range": "0.5 – 100 %", "default": "50", "desc": "Room physical dimension scale"},
            {"name": "decay", "range": "0 – 110 %", "default": "60", "desc": "Decay feedback (100 = infinite sustain)"},
            {"name": "absorb", "range": "0 – 100 %", "default": "40", "desc": "High-frequency wall damping"},
            {"name": "tilt", "range": "-1 – 1", "default": "0", "desc": "Spectral tilt (-1: dark, +1: bright)"},
            {"name": "predelay", "range": "0 – 100 ms", "default": "10", "desc": "Early reflection onset delay"},
            {"name": "speed / depth", "range": "0.1–10 Hz / 0–20", "default": "1 / 2", "desc": "Internal Doppler chorus modulation"},
            {"name": "mix_rev (mix)", "range": "0 – 100 %", "default": "50", "desc": "Dry/Wet balance"}
        ]
    },
    {
        "id": "frost-machine",
        "name": "Frost Machine",
        "title": "Industrial Allpass Reverb Tank, Post-Fuzz & Sidechain Pump",
        "category": "granular",
        "category_label": "Granular & Microsound",
        "badge": "Reverb / Fuzz / Pump",
        "gendsp": "gendsp/frost-machine.gendsp",
        "maxpat": "frost-machine.maxpat",
        "description": "Industrial ambient sound processor combining 4 cascaded allpass pre-diffusers, a cross-coupled chorus reverb tank, an asymmetric post-reverb fuzz saturator, lowpass tone shaping, and transient-driven sidechain ducking ('the wave').",
        "dsp_paradigm": "4-stage allpass pre-diffusion + cross-feedback chorus reverb + post-fuzz + sidechain ducking",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Processed left channel", "out2: Processed right channel"],
        "block_diagram": """[in1, in2] ──┬──> [4x Allpass Pre-Diffusers] ──> [Cross-Coupled Chorus Tank]
             │                                           │
             │                                           ▼
             │                                  [Asymmetric Fuzz + LPF Tone]
             │                                           │
             ▼                                           ▼
      [Sidechain Env Detector] ──────────────────> [Ducking VCA ("The Wave")]
                                                         │
                                                         ▼
                                                   [Wet Gain & Mix] ──> [out1, out2]""",
        "parameters": [
            {"name": "p_size / p_decay_pct", "range": "0–1 / 0–100 %", "default": "0.6 / 94", "desc": "Acoustic space dimension & feedback decay"},
            {"name": "p_damp_hz", "range": "100 – 16000 Hz", "default": "3000", "desc": "Tank lowpass absorption cutoff"},
            {"name": "p_mod_ms / p_mod_hz", "range": "0–20 ms / 0–5 Hz", "default": "6 / 0.2", "desc": "Tank chorus excursion & LFO rate"},
            {"name": "p_fuzz_db / p_fuzz_hz", "range": "0–60 dB / 100–8000 Hz", "default": "35 / 800", "desc": "Post-reverb fuzz drive & harmonic tone cutoff"},
            {"name": "p_pump_db / p_release_ms", "range": "-60–0 dB / 10–5000 ms", "default": "-30 / 2000", "desc": "Sidechain pumping depth & release envelope"},
            {"name": "p_gain_wet_db / p_mix_pct", "range": "-60–24 dB / 0–100 %", "default": "0 / 50", "desc": "Wet path gain & Dry/Wet balance"}
        ]
    },
    {
        "id": "householder-fdn-16",
        "name": "Householder FDN 16",
        "title": "16x16 Householder Unitary Matrix Feedback Delay Network",
        "category": "reverbs",
        "category_label": "Spatial & Reverbs",
        "badge": "Unitary FDN-16",
        "gendsp": "gendsp/householder-fdn-16.gendsp",
        "maxpat": "householder-fdn-16.maxpat",
        "description": "High-density 16-channel spatial reverberator utilizing an orthogonal Householder reflection feedback matrix H = I - (2/N)*1*1^T. Computes exact 16x16 unitary mixing in O(N) operations across 16 mutually prime delay lines with per-channel absorption filters.",
        "dsp_paradigm": "16-channel unitary FDN with O(N) Householder reflection operator + T60 absorption matching",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Spatial left output", "out2: Spatial right output"],
        "block_diagram": """[in1, in2] ──> [2x16 Input Distribution Matrix]
                     │
                     ▼
         ┌───> (+) ──> [16 Co-Prime Delay Lines: z^-D_k] (k=1..16)
         │      │                      │
         │      │                      ▼
         │      │         [16x Absorption Filters: H_loss(z)]
         │      │                      │
         │      │                      ▼
         │      └───── [16x16 Householder Matrix: H = I - (2/16)*1*1^T]
         │                             │ (O(16) Addition Pipeline)
         └─────────────────────────────┘
                                       │
                                       ▼
                       [16x2 Spatial Downmix Matrix] ──> [out1, out2]""",
        "parameters": [
            {"name": "size", "range": "0.1 – 2.0", "default": "1.0", "desc": "Delay lines scaling factor"},
            {"name": "decay", "range": "0.1 – 30 s", "default": "4.5", "desc": "Global reverberation decay time T60"},
            {"name": "damping", "range": "0 – 1", "default": "0.35", "desc": "High-frequency absorption coefficient"},
            {"name": "mod_amt", "range": "0 – 20 samples", "default": "3.0", "desc": "Delay line modulation depth"},
            {"name": "mod_rate", "range": "0.1 – 5 Hz", "default": "0.7", "desc": "LFO chorus modulation frequency"},
            {"name": "mix", "range": "0 – 100 %", "default": "50", "desc": "Dry/Wet balance"}
        ]
    },
    {
        "id": "lorenz-rossler-chaos",
        "name": "Lorenz-Rössler Chaos",
        "title": "4th-Order Runge-Kutta Strange Attractor Integrator",
        "category": "modulation",
        "category_label": "Modulation & LFO",
        "badge": "Chaotic Attractor",
        "gendsp": "gendsp/lorenz-rossler-chaos.gendsp",
        "maxpat": "lorenz-rossler-chaos.maxpat",
        "description": "Continuous 3D non-linear dynamic system solver evaluated via 4th-order Runge-Kutta (RK4) numerical integration. Implements Lorenz and Rössler attractors with external cross-modulation injection, audio-rate speed CV, and Poincaré section trigger detection.",
        "dsp_paradigm": "RK4 integration of non-linear ODEs: Lorenz & Rössler attractors + Poincaré trigger",
        "inlets": ["in1: External audio / perturbation injection", "in2: Integration speed audio CV (FM rate)"],
        "outlets": ["out1: X-axis state (-1..1)", "out2: Y-axis state (-1..1)", "out3: Z-axis state (unipolar CV)", "out4: Poincaré section crossing trigger"],
        "block_diagram": """[in2: Speed CV] ──> [Time Step: dt] ──┐
[in1: Inject]   ──> [Perturb State] ──┤
                                      ▼
                 [4th-Order Runge-Kutta (RK4) Evaluator]
                 ├── k1 = f(y_n)
                 ├── k2 = f(y_n + dt/2 * k1)
                 ├── k3 = f(y_n + dt/2 * k2)
                 └── k4 = f(y_n + dt * k3)
                                      │
                       [Mode 0: Lorenz / Mode 1: Rössler]
                                      │
                                      ▼
                       [State History Vector (x, y, z)]
                                      │
                 ┌────────────────────┼────────────────────┬────────────────────┐
                 ▼                    ▼                    ▼                    ▼
           [out1: X Axis]       [out2: Y Axis]       [out3: Z CV]    [Poincaré Cross ──> out4]""",
        "parameters": [
            {"name": "system", "range": "0 / 1", "default": "0", "desc": "Attractor ODE (0: Lorenz, 1: Rössler)"},
            {"name": "speed", "range": "0.01 – 1000", "default": "40", "desc": "Base numerical integration rate"},
            {"name": "drive", "range": "0 – 2.0", "default": "1.0", "desc": "Nonlinear output drive scaling"},
            {"name": "param_rho", "range": "10 – 60", "default": "28", "desc": "Bifurcation control parameter (rho / c)"},
            {"name": "inject", "range": "0 – 1", "default": "0", "desc": "External signal injection into state vector"}
        ]
    },
    {
        "id": "offset-spline-random",
        "name": "Offset Spline Random",
        "title": "6-Point Hermite Spline Smooth Stochastic Generator",
        "category": "stochastic",
        "category_label": "Stochastic & Logic",
        "badge": "Spline Randomizer",
        "gendsp": "gendsp/offset-spline-random.gendsp",
        "maxpat": "offset-spline-random.maxpat",
        "description": "Continuous random walk generator employing 6-point cubic Hermite spline interpolation across a 6-register FIFO shift buffer. Produces smooth C1-continuous control trajectories without stair-stepping, driven by an internal phasor or external audio clock.",
        "dsp_paradigm": "Bounded random walk + 6-point FIFO shift register + cubic Hermite spline interpolation",
        "inlets": ["in1: Reference / value input", "in2: External clock phasor (when trigmode = 1)"],
        "outlets": ["out1: Attenuated result out", "out2: Frequency step pulse", "out3: Pre-amp smooth spline walk", "out4: Pre-amp stepped S&H walk"],
        "block_diagram": """[in2: Ext Phasor] ──┬──> [Trigger Mode Select] ──> [Cycle Wrap Detect] ──> [out2: Pulse]
[Internal Phasor] ──┘                                       │
                                                            ▼
                                                 [6-Point FIFO Shift Register]
                                                 [p0..p5] ◄── [Bounded Random Walk]
                                                            │
                                    ┌───────────────────────┴───────────────────────┐
                                    ▼                                               ▼
                       [6-Point Hermite Spline]                            [Stepped S&H Output]
                                    │                                               │
                                    ├──> [out3: Pre-Amp Smooth]                     └──> [out4: Stepped]
                                    ▼
                        [Mode Switch & Amp Scale] ──> [out1: Result]""",
        "parameters": [
            {"name": "amp", "range": "0 – 1", "default": "0.2", "desc": "Output amplitude scaling"},
            {"name": "trigmode", "range": "0 / 1", "default": "0", "desc": "0: Internal phasor, 1: External clock (in2)"},
            {"name": "frequency", "range": "Hz", "default": "20", "desc": "Internal phasor update frequency"},
            {"name": "range", "range": "0 – 100 %", "default": "50", "desc": "Random walk step deviation"},
            {"name": "mode", "range": "0 / 1", "default": "1", "desc": "0: Stepped S&H, 1: Smooth cubic spline"}
        ]
    },
    {
        "id": "poisson-cloud",
        "name": "Poisson Cloud",
        "title": "Exponential Inter-Arrival Stochastic Pulse Burst Generator",
        "category": "stochastic",
        "category_label": "Stochastic & Logic",
        "badge": "Poisson Process",
        "gendsp": "gendsp/poisson-cloud.gendsp",
        "maxpat": "poisson-cloud.maxpat",
        "description": "Memoryless stochastic pulse burst generator modeling a Poisson point process. Computes exponentially distributed inter-arrival intervals via inverse transform sampling dt = -ln(U) / lambda, emitting PWM pulses over N occurrences with loop and jitter control.",
        "dsp_paradigm": "Inverse-CDF Poisson point process (-ln(U)) + finite occurrence PWM burst state machine",
        "inlets": ["in1: Start burst trigger (> 0.1)", "in2: Stop burst trigger (> 0.1)"],
        "outlets": ["out1: Active PWM pulse train", "out2: Current occurrence index (1..N)", "out3: Process running flag (0/1)"],
        "block_diagram": """[in1: Start] ──> [Burst State Machine] <── [in2: Stop]
                       │ (Running)
                       ▼
           [Poisson Interval Solver: dt = mix(T, -T*ln(U), jitter)] ◄── [RNG U(0,1)]
                       │
                       ▼
           [Phase Accumulator & Sample Guard]
                       │
     ┌─────────────────┼─────────────────┐
     ▼                 ▼                 ▼
[PWM Comparator]  [Occurrence Cnt]  [Active State]
     │                 │                 │
     ▼                 ▼                 ▼
[out1: Pulse]     [out2: Count]    [out3: Running]""",
        "parameters": [
            {"name": "occurrences", "range": ">= 1", "default": "16", "desc": "Total pulses emitted per burst"},
            {"name": "interval", "range": "1 – 30000 ms", "default": "250", "desc": "Mean inter-pulse period"},
            {"name": "width", "range": "0.01 – 0.99", "default": "0.5", "desc": "Pulse duty cycle (PWM)"},
            {"name": "loop", "range": "0 / 1", "default": "0", "desc": "0: Single burst stop, 1: Continuous re-trigger"},
            {"name": "jitter", "range": "0 – 1", "default": "0", "desc": "0: Periodic, 1: Pure exponential Poisson distribution"}
        ]
    },
    {
        "id": "precision-svf-48db",
        "name": "Precision SVF 48dB",
        "title": "8-Stage Cascaded 48dB/Oct State Variable Filter",
        "category": "filters",
        "category_label": "Filters & Equalizers",
        "badge": "Precision SVF",
        "gendsp": "gendsp/precision-svf-48db.gendsp",
        "maxpat": "precision-svf-48db.maxpat",
        "description": "Ultra-steep 16-pole (48 dB/oct) stereo State Variable Filter formed by 4 cascaded dual-stage SVF topologies per channel. Features logarithmic cutoff interpolation smoothing, nonlinear asymmetric saturation drive, stereo cutoff width offset, and automatic gain compensation (AGC).",
        "dsp_paradigm": "4-stage cascaded SVF (48 dB/oct LP/HP) + log-domain cutoff smoothing + nonlinear drive",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Filtered left output", "out2: Filtered right output"],
        "block_diagram": """[in1, in2] ──> [Asymmetric Drive] ──> [SVF 1] ──> [SVF 2] ──> [SVF 3] ──> [SVF 4] (48 dB/oct)
                                         ▲           ▲           ▲           ▲
[Log-Cutoff Smooth & Stereo Width] ──────┴───────────┴───────────┴───────────┘
                                                                             │
                                                                             ▼
                                                     [Mode (LP/HP), AGC & Mix] ──> [out1, out2]""",
        "parameters": [
            {"name": "frequency", "range": "20 – 20000 Hz", "default": "1000", "desc": "Filter cutoff frequency"},
            {"name": "mode", "range": "0 / 1", "default": "1", "desc": "Topology morph (0: Lowpass, 1: Highpass)"},
            {"name": "mix", "range": "0 – 1", "default": "1", "desc": "Dry/Wet blend"},
            {"name": "gain / drive", "range": "0 – 24 dB", "default": "0 / 0", "desc": "Makeup gain & saturation drive"},
            {"name": "width / agc", "range": "0 – 1", "default": "0 / 0.5", "desc": "L/R cutoff offset & automatic gain control"},
            {"name": "smooth", "range": "0 – 1000 ms", "default": "50", "desc": "Logarithmic parameter smoothing window"}
        ]
    },
    {
        "id": "pulsar-synth",
        "name": "Pulsar Synth",
        "title": "Curtis Roads Micro-Sonic Pulsar Synthesis Engine",
        "category": "granular",
        "category_label": "Granular & Microsound",
        "badge": "Microsound / Pulsar",
        "gendsp": "gendsp/pulsar-synth.gendsp",
        "maxpat": "pulsar-synth.maxpat",
        "description": "Implementation of Curtis Roads' pulsar synthesis. Generates periodic trains consisting of a primary waveform burst (pulsaret) followed by a variable silence interval. Includes selectable pulsaret waveforms, window envelopes, stochastic burst masking, and stereo pan spread.",
        "dsp_paradigm": "Pulsar synthesis: periodic trains of pulsarets + formant windowing + stochastic masking",
        "inlets": ["in1: External reset / sync trigger", "in2: Formant frequency audio CV"],
        "outlets": ["out1: Pulsar stereo left output", "out2: Pulsar stereo right output"],
        "block_diagram": """[in1: Sync] ──> [Pulsar Period Acc (f0)] ──> (Phase < duty_ratio ?)
                                                  ├── TRUE  ──> [Pulsaret Wave] (Sine/Formant/Fold/Noise)
                                                  │                    │
                                                  │                    ▼
[in2: Formant CV] ────────────────────────────────┼───────────> [Formant Pitch]
                                                  │                    │
                                                  │                    ▼
                                                  └── FALSE ──> [Window Env * Mask] ──> [Pan Spread] ──> [out1, out2]""",
        "parameters": [
            {"name": "f0", "range": "0.1 – 500 Hz", "default": "25", "desc": "Fundamental pulsar repetition frequency"},
            {"name": "formant_f", "range": "20 – 8000 Hz", "default": "650", "desc": "Internal pulsaret formant frequency"},
            {"name": "duty_ratio", "range": "0.01 – 1.0", "default": "0.3", "desc": "Pulsaret-to-period duty cycle"},
            {"name": "wave_shape / win_type", "range": "0 – 3", "default": "0 / 1", "desc": "Pulsaret waveform & window shape"},
            {"name": "masking", "range": "0 – 1", "default": "0", "desc": "Stochastic burst suppression probability"},
            {"name": "pan_spread", "range": "0 – 1", "default": "0.5", "desc": "Per-pulsar stereo dispersion"}
        ]
    },
    {
        "id": "sature-delay",
        "name": "Sature Delay",
        "title": "Dual-Mode Tape & Lo-Fi Character Delay",
        "category": "delays",
        "category_label": "Delays & Echoes",
        "badge": "Analog / Lo-Fi Delay",
        "gendsp": "gendsp/sature-delay.gendsp",
        "maxpat": "sature-delay.maxpat",
        "description": "Character stereo delay featuring switchable Digital Lo-Fi (logarithmic bitcrushing/sample-rate decimation) and Analog Tape (voltage sag & asymmetric saturation) modes, 40 Hz DC blocking, Hinge Tilt EQ, allpass diffusion smearing, and ping-pong cross-feedback.",
        "dsp_paradigm": "Modulated fractional delay + dual degradation engine + Tilt EQ + allpass diffuser",
        "inlets": ["in1: Left audio input", "in2: Right audio input"],
        "outlets": ["out1: Processed left output", "out2: Processed right output"],
        "block_diagram": """[in1, in2] ──(+)──> [Fractional Delay (Wow/Flutter)] ──> [Allpass Diffuser]
              ▲                                                  │
              │     ┌── [Mode 0: Bitcrush / Mode 1: Tape Sat] ◄──┤
              │     ▼                                            ▼
              └── [Hinge Tilt EQ & DC Block] <── [PingPong/FB]  [Dry/Wet Mix] ──> [out1, out2]""",
        "parameters": [
            {"name": "time / fb", "range": "1–2000 ms / 0–1.2", "default": "250 / 0.5", "desc": "Delay duration & feedback (>1.0 soft-oscillating)"},
            {"name": "tilt / freq", "range": "-1–1 / 40–15000 Hz", "default": "0 / 1000", "desc": "Spectral tilt balance & hinge frequency"},
            {"name": "crush / mode", "range": "0–1 / 0–1", "default": "0 / 0", "desc": "Degradation depth (0: Digital, 1: Analog tape)"},
            {"name": "diff / pingpong", "range": "0–1 / 0–1", "default": "0 / 0", "desc": "Allpass diffusion & stereo cross-feedback"},
            {"name": "mix_bal", "range": "0 – 1", "default": "0.5", "desc": "Dry/Wet balance"}
        ]
    },
    {
        "id": "tape-hysteresis",
        "name": "Tape Hysteresis",
        "title": "Jiles-Atherton Magnetic Domain Saturation & Hysteresis",
        "category": "distortion",
        "category_label": "Distortion & Saturation",
        "badge": "Hysteresis Model",
        "gendsp": "gendsp/tape-hysteresis.gendsp",
        "maxpat": "tape-hysteresis.maxpat",
        "description": "Physical simulation of magnetic tape hysteresis based on the discrete differential Jiles-Atherton model. Models domain coercivity, remanence, magnetic memory state, high-frequency bias, and tape-speed high-frequency flux drag.",
        "dsp_paradigm": "Discrete Jiles-Atherton differential magnetic domain solver",
        "inlets": ["in1: Left audio input (field H)", "in2: Right audio input (field H)"],
        "outlets": ["out1: Left tape output", "out2: Right tape output"],
        "block_diagram": """[in1, in2] ──> [Drive & HF Pre-Emphasis] ──> [Effective Field: He = H + alpha*M]
                                                           │
                                                           ▼
                                           [Jiles-Atherton Differential Solver]
                                           (Langevin Man + Pinning Coercivity k / Remanence c)
                                                           │
                                                           ▼
                                           [Tape-Speed Head Bump & Flux Loss Filter]
                                                           │
                                                           ▼
                                            [Dry/Wet Mix & Makeup Gain] ──> [out1, out2]""",
        "parameters": [
            {"name": "drive / bias", "range": "0 – 100 %", "default": "40 / 50", "desc": "Input field drive & ultrasonic bias linearization"},
            {"name": "coercivity", "range": "0.01 – 1.0", "default": "0.3", "desc": "Magnetic hysteresis loop width (k)"},
            {"name": "remanence", "range": "0 – 1.0", "default": "0.25", "desc": "Domain pinning ratio / magnetic memory (c)"},
            {"name": "speed_khz", "range": "4 – 20 kHz", "default": "15", "desc": "Tape head flux bandwidth scaling"},
            {"name": "mix / gainout", "range": "0–100% / -24–12 dB", "default": "100 / 0", "desc": "Dry/Wet blend & output gain"}
        ]
    },
    {
        "id": "ufo-multilfo",
        "name": "UFO Multi-LFO",
        "title": "Multi-Waveform Modulation Oscillator & Slew Limiter",
        "category": "modulation",
        "category_label": "Modulation & LFO",
        "badge": "LFO / Slew Limiter",
        "gendsp": "gendsp/ufo.gendsp",
        "maxpat": "ufo.maxpat",
        "description": "Multi-waveform modulation oscillator with non-linear exponential curve warping, one-shot burst counting, polarity inversion, unipolar mapping, and an embedded GenExpr asymmetrical slew rate limiter (Maurizio Giri rampsmooth core).",
        "dsp_paradigm": "Phase accumulator + polynomial curve warping + embedded GenExpr rampsmooth slew limiter",
        "inlets": ["in1: Frequency in Hz (0.0001 to 1000 Hz)", "in2: Trigger input (reset / one-shot restart)"],
        "outlets": ["out1: Bipolar / Unipolar LFO waveform"],
        "block_diagram": """[in1: Freq] ──> [Accum & Oneshot Clip] ──> [Waveforms: Cos/Tri/Saw/Pulse/S&H/Smooth]
                       ▲                                       │
[in2: Trig] ───────────┘                                       ▼
                                                  [Exp1 / ExpC / Exp2 Warp]
                                                               │
                                                               ▼
                                                 [GenExpr Rampsmooth Slew]
                                                               │
                                                               ▼
                                                [Gain / Offset / Invert / Unipolar] ──> [out1]""",
        "parameters": [
            {"name": "lfosel", "range": "0 – 5", "default": "0", "desc": "Waveform selector (incl. S&H + smoothed random)"},
            {"name": "exp1 / exp2 / expc", "range": "0.1 – 10", "default": "1", "desc": "Phase and symmetry curvature exponents"},
            {"name": "oneshot / shotnumbers", "range": "0 / 1 / N", "default": "0 / 1", "desc": "One-shot cycle burst mode & repetition count"},
            {"name": "gain / offset", "range": "Variable", "default": "1 / 0", "desc": "Output scale & DC bias"},
            {"name": "invert / unipolar", "range": "0 / 1", "default": "0 / 0", "desc": "Polarity inversion & 0..1 unipolar mapping"}
        ]
    },
    {
        "id": "volt-drama",
        "name": "Volt Drama",
        "title": "Dual-Stage Distortion, 24dB Moog Ladder & Recursive Delay",
        "category": "distortion",
        "category_label": "Distortion & Saturation",
        "badge": "Distortion / Delay",
        "gendsp": "gendsp/volt-drama.gendsp",
        "maxpat": "volt-drama.maxpat",
        "description": "Non-linear distortion network combining polynomial soft saturation with a Tarrabia clipper shaper, a 4-pole 24 dB/oct Moog ladder filter, a 4-voice unison detune spreader, and an infinite recursive feedback delay line.",
        "dsp_paradigm": "Dual waveshaping models + 4-pole Moog ladder + 4-voice unison + feedback delay",
        "inlets": ["in1: Left audio channel", "in2: Right audio channel"],
        "outlets": ["out1: Distorted left channel", "out2: Distorted right channel"],
        "block_diagram": """[in1, in2] ──> [Poly / Tarrabia Shaper] ──> [4-Pole Moog LPF] ──> [4-Voice Unison Detuner]
                         ▲                                                      │
                         │                                                      ▼
                         └── [Feedback Delay Line] ◄──────────────────── [Stereo Spread]
                                                                                │
                                                                                ▼
                                                                 [Global Mix & Gainout] ──> [out1, out2]""",
        "parameters": [
            {"name": "drive / shape", "range": "0 – 1", "default": "0.3 / 0.5", "desc": "Saturation drive & Poly vs Tarrabia morph"},
            {"name": "cutoff", "range": "50 – 20000 Hz", "default": "20000", "desc": "24 dB/oct Moog ladder cutoff frequency"},
            {"name": "feedback / time / spread", "range": "0–1 / 1–1000ms / 0–50ms", "default": "0.4 / 250 / 10", "desc": "Delay regeneration, time & L/R stereo offset"},
            {"name": "uni_mix / uni_detune / uni_width", "range": "0 – 100 %", "default": "50 / 30 / 100", "desc": "4-voice unison mix, detune & stereo spread"},
            {"name": "mix_global (mix) / gainout", "range": "0–100% / -60–12 dB", "default": "50 / 0", "desc": "Dry/Wet balance & output makeup gain"}
        ]
    },
    {
        "id": "volt-syphon",
        "name": "Volt Syphon",
        "title": "Voltage-Starved Ring Modulator with Pitch Tracking",
        "category": "distortion",
        "category_label": "Distortion & Saturation",
        "badge": "Ring Modulator",
        "gendsp": "gendsp/volt-syphon.gendsp",
        "maxpat": "volt-syphon.maxpat",
        "description": "Ring modulator circuit simulating supply voltage starvation (battery sag). Features dual internal oscillators (fixed carrier and envelope-following sweep carrier), asymmetric cross-modulation, input gating with attack/release dynamics, and supply noise instability.",
        "dsp_paradigm": "Voltage-starved four-quadrant multiplier + envelope-tracking sweep oscillator",
        "inlets": ["in1: Left audio input", "in2: Right audio input (or external carrier)"],
        "outlets": ["out1: Modulated left output", "out2: Modulated right output"],
        "block_diagram": """[in1, in2] ──> [Input Gain & Gate (Rise/Fall)] ──┬──> [Env Follower] ──> [Sweep OSC] ──┐
                                                 │                                      ├──> [Carrier Crossfade]
                                                 │        [Fixed Carrier OSC] ──────────┘            │
                                                 │                                                   ▼
                                                 └──────────────> [Starved Ring Multiplier] ◄────────┘
                                                                          ▲
                                            [Battery Sag & Instability] ──┤
                                                                          ▼
                                                             [Tone LPF & Compression] ──> [out1, out2]""",
        "parameters": [
            {"name": "freq_main / freq_main_amp", "range": "20–5000 Hz / 0–1", "default": "800 / 0.05", "desc": "Fixed carrier pitch & blend level"},
            {"name": "freq_min / freq_max / autofollow", "range": "20–5000 Hz / 0–100%", "default": "80 / 800 / 0", "desc": "Envelope-tracking sweep range & mix"},
            {"name": "sag / instability / compression", "range": "0 – 100 %", "default": "0 / 20 / 50", "desc": "Voltage drop, jitter & starving compression"},
            {"name": "gate / gate_gainin / rise / fall", "range": "0–100% / 0–15 / 2–2000ms", "default": "0 / 3 / 2 / 500", "desc": "Input noise gate & envelope dynamics"},
            {"name": "selfmod / tone", "range": "0 – 100 %", "default": "0 / 50", "desc": "Carrier self-modulation & post-tone filter"},
            {"name": "mix / gainout", "range": "0–100% / -60–12 dB", "default": "100 / 0", "desc": "Dry/Wet blend & output gain"}
        ]
    },
    {
        "id": "waveguide-string",
        "name": "Waveguide String",
        "title": "4-Voice Polyphonic Waveguide Physical String Model",
        "category": "physical",
        "category_label": "Physical Modeling",
        "badge": "Physical Model",
        "gendsp": "gendsp/waveguide-string.gendsp",
        "maxpat": "waveguide-string.maxpat",
        "description": "4-voice digital waveguide physical model based on an extended Karplus-Strong formulation. Includes internal shaped burst exciter, dual-comb pick position filter, 4 detuned delay lines, 1st-order allpass dispersion for inharmonic stiffness, 1-pole loss damping, non-linear bridge saturation (twang), and normalized 0.25 gain weighting.",
        "dsp_paradigm": "4-voice fractional delay waveguide + stiffness allpass dispersion + non-linear bridge saturation",
        "inlets": ["in1: Audio excitation / external strike (> 0.1 triggers)", "in2: Pitch modulation CV (additive Hz offset)"],
        "outlets": ["out1: Left string audio (stereo pickup)", "out2: Right string audio (stereo pickup)"],
        "block_diagram": """[in1: Strike] ──> [Exciter Burst] ──> [Pick Position Comb Filter]
                                                    │
        ┌────────────────────────┬──────────────────┴─────┬────────────────────────┐
        ▼                        ▼                        ▼                        ▼
 [Voice 1 (f0)]           [Voice 2 (+det)]         [Voice 3 (-det)]         [Voice 4 (+2*det)]
 ┌──────────────┐         ┌──────────────┐         ┌──────────────┐         ┌──────────────┐
 │Delay: z^-D1  │         │Delay: z^-D2  │         │Delay: z^-D3  │         │Delay: z^-D4  │
 │Allpass Stiff │         │Allpass Stiff │         │Allpass Stiff │         │Allpass Stiff │
 │1-Pole Loss   │         │1-Pole Loss   │         │1-Pole Loss   │         │1-Pole Loss   │
 │Bridge Twang  │         │Bridge Twang  │         │Bridge Twang  │         │Bridge Twang  │
 └──────┬───────┘         └──────┬───────┘         └──────┬───────┘         └──────┬───────┘
        │                        │                        │                        │
        └────────────────────────┴──────────┬─────────────┴────────────────────────┘
                                            ▼
                           [Normalized 4-Voice Sum (0.25)]
                                            │
                                            ▼
                                [Stereo Pickup Separation] ──> [out1, out2]""",
        "parameters": [
            {"name": "freq", "range": "20 – 2000 Hz", "default": "110", "desc": "Fundamental center pitch"},
            {"name": "detune", "range": "0 – 100 %", "default": "5", "desc": "Voice spread (0: unison, 10: chorus, 100: noise cloud)"},
            {"name": "decay_time", "range": "0.1 – 20 s", "default": "3.5", "desc": "Reverberant string decay T60"},
            {"name": "damping", "range": "0 – 1", "default": "0.3", "desc": "High-frequency loss per period"},
            {"name": "stiffness", "range": "0 – 1", "default": "0.15", "desc": "Inharmonic allpass dispersion coefficient"},
            {"name": "pick_pos", "range": "0.01 – 0.99", "default": "0.22", "desc": "Excitation pick position ratio"},
            {"name": "strike_res", "range": "0 – 1", "default": "0.5", "desc": "Excitation burst bandwidth"},
            {"name": "nl_bridge", "range": "0 – 1", "default": "0.25", "desc": "Non-linear bridge saturation factor"},
            {"name": "trig", "range": "0 / 1", "default": "0", "desc": "Manual trigger pulse"}
        ]
    },
    {
        "id": "zdf-diode-ladder",
        "name": "ZDF Diode Ladder",
        "title": "Zero-Delay Feedback TB-303 4-Pole Diode Filter",
        "category": "filters",
        "category_label": "Filters & Equalizers",
        "badge": "ZDF Filter",
        "gendsp": "gendsp/zdf-diode-ladder.gendsp",
        "maxpat": "zdf-diode-ladder.maxpat",
        "description": "Topology-Preserving Transform (TPT) Zero-Delay Feedback implementation of the Roland TB-303 4-stage diode ladder lowpass filter. Resolves the feedback loop instantaneously without a 1-sample delay, reproducing diode impedance loading, non-linear resonance saturation, and characteristic squelch.",
        "dsp_paradigm": "TPT Zero-Delay Feedback 4-pole diode ladder with non-linear feedback saturation",
        "inlets": ["in1: Input audio signal", "in2: Frequency modulation audio CV"],
        "outlets": ["out1: Filtered audio output (4-pole diode lowpass)", "out2: Non-linear resonance feedback monitor"],
        "block_diagram": """[in1: Audio] ──(+)──────────────────────────────────> [Stage 1] ──> [Stage 2] ──> [Stage 3] ──> [Stage 4] ──┬──> [out1: Audio]
                ▲                                                                                          │
                │                                                                                          │
                └───── [Resonance Feedback: k * tanh(x)] ◄─────────────────────────────────────────────────┴──> [out2: Res Mon]
                                       ▲
                        [Instantaneous ZDF Solver (TPT)]
                        (Resolves implicit feedback loop without 1-sample delay)""",
        "parameters": [
            {"name": "cutoff", "range": "20 – 20000 Hz", "default": "1200", "desc": "Filter cutoff frequency"},
            {"name": "resonance", "range": "0 – 1.2", "default": "0.75", "desc": "Resonance Q (self-oscillating above 0.95)"},
            {"name": "drive", "range": "0 – 100 %", "default": "20", "desc": "Input non-linear drive"},
            {"name": "env_mod", "range": "0 – 100 %", "default": "0", "desc": "Cutoff modulation depth"},
            {"name": "accent", "range": "0 – 100 %", "default": "0", "desc": "Dynamic resonant accent factor"}
        ]
    }
]

# Guarantee alphabetical order by model name
MODELS = sorted(MODELS, key=lambda m: m["name"].lower())

HTML_TEMPLATE = """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GEN~ DSP Audio Models Reference | MaxMSP & GenExpr</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-base: #0f1218;
            --bg-surface: #151a22;
            --bg-elevated: #1c222c;
            --border-subtle: rgba(255, 255, 255, 0.08);
            --border-strong: rgba(255, 255, 255, 0.16);
            --text-main: #e2e8f0;
            --text-muted: #8b9bb4;
            --text-dim: #5c6b82;
            --accent-primary: #38bdf8;
            --accent-slate: #64748b;
            --accent-tag: #1e293b;
            --tag-text: #94a3b8;
            --code-bg: #090c10;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background-color: var(--bg-base);
            color: var(--text-main);
            line-height: 1.5;
            padding-bottom: 80px;
        }

        header {
            max-width: 1240px;
            margin: 0 auto;
            padding: 50px 24px 24px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .header-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 12px;
            flex-wrap: wrap;
            gap: 12px;
        }

        .sys-badge {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.75rem;
            color: var(--accent-primary);
            background: rgba(56, 189, 248, 0.08);
            border: 1px solid rgba(56, 189, 248, 0.2);
            padding: 3px 10px;
            border-radius: 4px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .meta-author {
            font-size: 0.85rem;
            color: var(--text-dim);
            font-family: 'JetBrains Mono', monospace;
        }

        h1 {
            font-size: 2.1rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            color: #ffffff;
            margin-bottom: 8px;
        }

        .header-desc {
            font-size: 0.95rem;
            color: var(--text-muted);
            max-width: 820px;
            line-height: 1.6;
            margin-bottom: 24px;
        }

        .metrics-strip {
            display: flex;
            gap: 36px;
            flex-wrap: wrap;
            padding-top: 16px;
            border-top: 1px solid rgba(255, 255, 255, 0.04);
        }

        .metric-unit {
            display: flex;
            flex-direction: column;
        }

        .metric-val {
            font-family: 'JetBrains Mono', monospace;
            font-size: 1.35rem;
            font-weight: 600;
            color: #ffffff;
        }

        .metric-lbl {
            font-size: 0.72rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--text-dim);
        }

        /* Controls */
        .controls-wrapper {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(15, 18, 24, 0.95);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border-subtle);
            padding: 14px 24px;
            margin-bottom: 32px;
        }

        .controls-inner {
            max-width: 1240px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .search-row {
            position: relative;
            width: 100%;
        }

        .search-field {
            width: 100%;
            background: var(--bg-surface);
            border: 1px solid var(--border-subtle);
            color: var(--text-main);
            padding: 10px 14px 10px 36px;
            border-radius: 6px;
            font-size: 0.9rem;
            font-family: inherit;
            outline: none;
            transition: border-color 0.15s ease;
        }

        .search-field:focus {
            border-color: var(--accent-primary);
        }

        .search-icon-svg {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-dim);
            width: 16px;
            height: 16px;
        }

        .category-row {
            display: flex;
            gap: 6px;
            overflow-x: auto;
            scrollbar-width: none;
        }

        .category-row::-webkit-scrollbar {
            display: none;
        }

        .cat-btn {
            background: transparent;
            color: var(--text-muted);
            border: 1px solid var(--border-subtle);
            padding: 5px 12px;
            border-radius: 4px;
            font-size: 0.78rem;
            font-weight: 500;
            cursor: pointer;
            white-space: nowrap;
            transition: all 0.15s ease;
        }

        .cat-btn:hover {
            color: #ffffff;
            border-color: var(--border-strong);
        }

        .cat-btn.active {
            background: var(--accent-primary);
            color: #090c10;
            border-color: var(--accent-primary);
            font-weight: 600;
        }

        /* Catalog Layout */
        main {
            max-width: 1240px;
            margin: 0 auto;
            padding: 0 24px;
        }

        .alpha-legend {
            font-size: 0.8rem;
            color: var(--text-dim);
            margin-bottom: 16px;
            font-family: 'JetBrains Mono', monospace;
        }

        .catalog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(380px, 1fr));
            gap: 20px;
        }

        .spec-card {
            background: var(--bg-surface);
            border: 1px solid var(--border-subtle);
            border-radius: 8px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .spec-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 12px;
            margin-bottom: 8px;
        }

        .model-name {
            font-size: 1.15rem;
            font-weight: 600;
            color: #ffffff;
        }

        .model-subtitle {
            font-size: 0.8rem;
            color: var(--text-muted);
            margin-bottom: 10px;
        }

        .class-badge {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.68rem;
            padding: 2px 8px;
            border-radius: 3px;
            background: var(--accent-tag);
            color: var(--tag-text);
            border: 1px solid rgba(255, 255, 255, 0.05);
            white-space: nowrap;
        }

        .paradigm-box {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.72rem;
            background: var(--code-bg);
            border: 1px solid rgba(255, 255, 255, 0.04);
            padding: 6px 10px;
            border-radius: 4px;
            color: var(--text-muted);
            margin-bottom: 14px;
            line-height: 1.4;
        }

        .model-abstract {
            font-size: 0.86rem;
            color: var(--text-muted);
            line-height: 1.55;
            margin-bottom: 16px;
        }

        /* IO Specs */
        .io-matrix {
            background: rgba(9, 12, 16, 0.6);
            border: 1px solid rgba(255, 255, 255, 0.04);
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 14px;
            font-size: 0.75rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }

        .io-section-title {
            font-size: 0.65rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--text-dim);
            font-weight: 600;
            margin-bottom: 4px;
        }

        .io-node {
            font-family: 'JetBrains Mono', monospace;
            color: var(--text-muted);
            font-size: 0.72rem;
            line-height: 1.35;
        }

        /* Card Section Drawer Navigation */
        .nav-drawers {
            display: flex;
            gap: 6px;
            margin-bottom: 10px;
        }

        .btn-drawer {
            flex: 1;
            background: var(--bg-elevated);
            color: var(--text-muted);
            border: 1px solid var(--border-subtle);
            border-radius: 4px;
            padding: 6px 8px;
            font-size: 0.75rem;
            font-family: 'JetBrains Mono', monospace;
            font-weight: 500;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: all 0.15s ease;
        }

        .btn-drawer:hover {
            color: #ffffff;
            border-color: var(--border-strong);
        }

        .btn-drawer.active {
            background: rgba(56, 189, 248, 0.1);
            color: var(--accent-primary);
            border-color: rgba(56, 189, 248, 0.3);
        }

        .btn-drawer-icon {
            font-size: 0.7rem;
            margin-left: 4px;
        }

        /* Drawer Containers */
        .drawer-panel {
            display: none;
            margin-bottom: 14px;
            background: var(--code-bg);
            border: 1px solid var(--border-subtle);
            border-radius: 5px;
            padding: 10px;
        }

        .drawer-panel.open {
            display: block;
        }

        /* Parameters Table */
        .param-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.73rem;
        }

        .param-table th, .param-table td {
            padding: 5px 6px;
            text-align: left;
            border-bottom: 1px solid rgba(255, 255, 255, 0.04);
        }

        .param-table th {
            color: var(--text-dim);
            font-size: 0.65rem;
            text-transform: uppercase;
            font-weight: 600;
            font-family: 'JetBrains Mono', monospace;
        }

        .p-name {
            font-family: 'JetBrains Mono', monospace;
            color: var(--accent-primary);
        }

        .p-range {
            font-family: 'JetBrains Mono', monospace;
            color: var(--text-dim);
            font-size: 0.7rem;
        }

        /* Block Diagram View */
        .diagram-view {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.68rem;
            line-height: 1.35;
            color: #93c5fd;
            background: #090c10;
            padding: 8px 4px;
            overflow-x: auto;
            white-space: pre;
            border-radius: 4px;
        }

        .diagram-view::-webkit-scrollbar {
            height: 4px;
        }
        .diagram-view::-webkit-scrollbar-thumb {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 2px;
        }

        .card-bottom {
            padding-top: 12px;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            display: flex;
            justify-content: flex-end;
            gap: 8px;
        }

        .ref-link {
            font-family: 'JetBrains Mono', monospace;
            font-size: 0.72rem;
            color: var(--text-muted);
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border-subtle);
            padding: 4px 8px;
            border-radius: 3px;
            text-decoration: none;
            transition: all 0.15s ease;
        }

        .ref-link:hover {
            color: var(--accent-primary);
            border-color: var(--accent-primary);
        }

        footer {
            max-width: 1240px;
            margin: 60px auto 0;
            padding: 24px;
            border-top: 1px solid var(--border-subtle);
            font-size: 0.8rem;
            color: var(--text-dim);
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 12px;
        }

        @media (max-width: 768px) {
            .catalog-grid {
                grid-template-columns: 1fr;
            }
            .io-matrix {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-top">
            <span class="sys-badge">Max MSP &bull; GenExpr &bull; 64-Bit DSP</span>
            <span class="meta-author">Max Bruckert &bull; 2026</span>
        </div>
        <h1>GEN~ Audio DSP Library</h1>
        <p class="header-desc">
            A peer-reference catalog of 21 discrete algorithms in GenExpr: physical waveguide formulations,
            zero-delay feedback (ZDF) filters, feedback delay networks, non-linear magnetic hysteresis,
            strange attractors, and granular microsound synthesis.
        </p>
        <div class="metrics-strip">
            <div class="metric-unit">
                <span class="metric-val">21</span>
                <span class="metric-lbl">Validated Models</span>
            </div>
            <div class="metric-unit">
                <span class="metric-val">25</span>
                <span class="metric-lbl">Standalone .gendsp</span>
            </div>
            <div class="metric-unit">
                <span class="metric-val">Float64</span>
                <span class="metric-lbl">Double Precision</span>
            </div>
            <div class="metric-unit">
                <span class="metric-val">A &rarr; Z</span>
                <span class="metric-lbl">Alphabetical Sorting</span>
            </div>
        </div>
    </header>

    <div class="controls-wrapper">
        <div class="controls-inner">
            <div class="search-row">
                <svg class="search-icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                </svg>
                <input type="text" id="searchInput" class="search-field" placeholder="Filter models by identifier, transfer function, architecture, parameter name...">
            </div>
            <div class="category-row">
                <button class="cat-btn active" data-category="all">All Models (21)</button>
                <button class="cat-btn" data-category="physical">Physical Modeling</button>
                <button class="cat-btn" data-category="reverbs">Spatial & Reverbs</button>
                <button class="cat-btn" data-category="delays">Delays & Echoes</button>
                <button class="cat-btn" data-category="filters">Filters & Equalizers</button>
                <button class="cat-btn" data-category="distortion">Distortion & Saturation</button>
                <button class="cat-btn" data-category="granular">Granular & Microsound</button>
                <button class="cat-btn" data-category="stochastic">Stochastic & Logic</button>
                <button class="cat-btn" data-category="modulation">Modulation & LFO</button>
            </div>
        </div>
    </div>

    <main>
        <div class="alpha-legend" id="resultsCount">Displaying 21 models sorted alphabetically</div>
        <div class="catalog-grid" id="modelsGrid"></div>
    </main>

    <footer>
        <div>GEN~ DSP Reference &bull; Scientific & Modular Audio Architecture</div>
        <div>Compatible with Max 8/9, RNBO & Daisy/Oopsy</div>
    </footer>

    <script>
        const modelsData = """ + json.dumps(MODELS) + """;

        const grid = document.getElementById('modelsGrid');
        const searchInput = document.getElementById('searchInput');
        const filterBtns = document.querySelectorAll('.cat-btn');
        const resultsCount = document.getElementById('resultsCount');

        let currentCategory = 'all';
        let searchQuery = '';

        function renderModels() {
            grid.innerHTML = '';
            
            // Filter and STRICTLY SORT alphabetically by model name
            const filtered = modelsData
                .filter(m => {
                    const matchesCategory = currentCategory === 'all' || m.category === currentCategory;
                    const textToSearch = (m.name + ' ' + m.title + ' ' + m.description + ' ' + m.dsp_paradigm + ' ' + m.parameters.map(p => p.name).join(' ')).toLowerCase();
                    const matchesSearch = textToSearch.includes(searchQuery.toLowerCase());
                    return matchesCategory && matchesSearch;
                })
                .sort((a, b) => a.name.localeCompare(b.name, undefined, { sensitivity: 'base' }));

            resultsCount.textContent = `Displaying ${filtered.length} model${filtered.length === 1 ? '' : 's'} (sorted A \u2192 Z)`;

            if (filtered.length === 0) {
                grid.innerHTML = '<div style=\"grid-column: 1/-1; padding: 40px; color: var(--text-dim); font-size: 0.9rem;\">No matching models found.</div>';
                return;
            }

            filtered.forEach(m => {
                const card = document.createElement('div');
                card.className = 'spec-card';

                let paramsRows = m.parameters.map(p => `
                    <tr>
                        <td class="p-name">${p.name}</td>
                        <td class="p-range">${p.range}</td>
                        <td>${p.desc}</td>
                    </tr>
                `).join('');

                card.innerHTML = `
                    <div>
                        <div class="spec-header">
                            <div>
                                <div class="model-name">${m.name}</div>
                                <div class="model-subtitle">${m.title}</div>
                            </div>
                            <span class="class-badge">${m.badge}</span>
                        </div>
                        <div class="paradigm-box">${m.dsp_paradigm}</div>
                        <p class="model-abstract">${m.description}</p>

                        <div class="io-matrix">
                            <div>
                                <div class="io-section-title">Inlets</div>
                                ${m.inlets.map(i => `<div class="io-node">&bull; ${i}</div>`).join('')}
                            </div>
                            <div>
                                <div class="io-section-title">Outlets</div>
                                ${m.outlets.map(o => `<div class="io-node">&bull; ${o}</div>`).join('')}
                            </div>
                        </div>

                        <div class="nav-drawers">
                            ${m.parameters.length > 0 ? `
                                <button class="btn-drawer" id="btn-params-${m.id}" onclick="toggleDrawer('${m.id}', 'params')">
                                    <span>Params (${m.parameters.length})</span>
                                    <span class="btn-drawer-icon" id="ind-params-${m.id}">&darr;</span>
                                </button>
                            ` : ''}
                            <button class="btn-drawer" id="btn-diagram-${m.id}" onclick="toggleDrawer('${m.id}', 'diagram')">
                                <span>Signal Flow</span>
                                <span class="btn-drawer-icon" id="ind-diagram-${m.id}">&darr;</span>
                            </button>
                        </div>

                        ${m.parameters.length > 0 ? `
                            <div class="drawer-panel" id="panel-params-${m.id}">
                                <table class="param-table">
                                    <thead>
                                        <tr>
                                            <th>Param</th>
                                            <th>Domain</th>
                                            <th>Role</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        ${paramsRows}
                                    </tbody>
                                </table>
                            </div>
                        ` : ''}

                        <div class="drawer-panel" id="panel-diagram-${m.id}">
                            <pre class="diagram-view">${m.block_diagram}</pre>
                        </div>
                    </div>

                    <div class="card-bottom">
                        <a href="../${m.gendsp}" class="ref-link" title="Gendsp file">.gendsp</a>
                        <a href="../${m.maxpat}" class="ref-link" title="Max patcher">.maxpat</a>
                    </div>
                `;

                grid.appendChild(card);
            });
        }

        function toggleDrawer(id, target) {
            const panel = document.getElementById(`panel-${target}-${id}`);
            const btn = document.getElementById(`btn-${target}-${id}`);
            const ind = document.getElementById(`ind-${target}-${id}`);
            
            const isOpen = panel.classList.contains('open');

            const other = target === 'params' ? 'diagram' : 'params';
            const otherPanel = document.getElementById(`panel-${other}-${id}`);
            const otherBtn = document.getElementById(`btn-${other}-${id}`);
            const otherInd = document.getElementById(`ind-${other}-${id}`);
            if (otherPanel && otherPanel.classList.contains('open')) {
                otherPanel.classList.remove('open');
                if (otherBtn) otherBtn.classList.remove('active');
                if (otherInd) otherInd.innerHTML = '&darr;';
            }

            if (isOpen) {
                panel.classList.remove('open');
                btn.classList.remove('active');
                ind.innerHTML = '&darr;';
            } else {
                panel.classList.add('open');
                btn.classList.add('active');
                ind.innerHTML = '&uarr;';
            }
        }

        searchInput.addEventListener('input', e => {
            searchQuery = e.target.value;
            renderModels();
        });

        filterBtns.forEach(btn => {
            btn.addEventListener('click', () => {
                filterBtns.forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                currentCategory = btn.getAttribute('data-category');
                renderModels();
            });
        });

        renderModels();
    </script>
</body>
</html>
"""

html_dest = os.path.join(DOCS_DIR, "index.html")
with open(html_dest, "w", encoding="utf-8") as f:
    f.write(HTML_TEMPLATE)

print(f"Scientific A-Z documentation successfully generated at: {html_dest}")
