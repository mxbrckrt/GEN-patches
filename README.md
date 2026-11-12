# GEN~ Audio DSP Models Library

[![MaxMSP](https://img.shields.io/badge/Max%2FMSP-8%20%7C%209-blue.svg)](https://cycling74.com)
[![Gen~](https://img.shields.io/badge/Gen~-64--bit%20Double%20Precision-38bdf8.svg)](https://cycling74.com)
[![Embedded](https://img.shields.io/badge/Embedded-Daisy%20%2F%20Oopsy%20Ready-64748b.svg)](https://electro-smith.com)
[![Catalog](https://img.shields.io/badge/Validated%20Models-21%20Algorithms-0ea5e9.svg)]()

A peer-reference suite of **21 discrete audio DSP algorithms** implemented in Cycling '74 MaxMSP `gen~` (GenExpr), covering physical waveguide modeling, zero-delay feedback (ZDF) analog filter topologies, unitary feedback delay networks (FDN), non-linear magnetic hysteresis, strange attractors, and granular microsound synthesis.

All algorithms follow a normalized 1-to-1 naming convention (`<model>.maxpat` and `gendsp/<model>.gendsp`) and are ready for direct instantiation via `[gen~ @gen <model>]` (with `GEN-patches` in Max's Search Path), integration into `mc.gen~`, C++ export, or deployment to embedded hardware (**Electro-Smith Daisy / Oopsy**).

---

## 📑 Interactive Documentation (A &rarr; Z)

A local, restrained scientific reference catalog is provided in [`docs/index.html`](docs/index.html).  
It features real-time search, domain filtering, I/O specifications, interactive **Params** & **Signal Flow** (block diagram) drawers, and persistent alphabetical sorting.

To open or rebuild the reference in a browser:
```bash
python3 generate_html_docs.py
open docs/index.html
```

---

## 📁 Repository Structure

```text
GEN-patches/
├── .gitignore                      # Ignores Max caches, audio binaries, and testing-and-redundancies/
├── README.md                       # Library overview & algorithmic index
├── generate_html_docs.py           # Generator for the scientific HTML reference
├── docs/
│   └── index.html                  # Alphabetical scientific documentation catalog
├── gendsp/                         # 25 standalone modular .gendsp definitions (21 models + 4 utilities/cores)
│   ├── aether-drift.gendsp
│   ├── aether-particle.gendsp
│   ├── bernoulli-gate.gendsp
│   ├── cswitch-tremolo.gendsp
│   ├── curvature-shaper.gendsp
│   ├── delays-delays.gendsp
│   ├── erbeverb-clone.gendsp
│   ├── frost-machine.gendsp
│   ├── householder-fdn-16.gendsp
│   ├── hp_butterworth.gendsp       # Utility: 24dB/oct 4th-order Butterworth HPF
│   ├── lorenz-rossler-chaos.gendsp
│   ├── lp_butterworth.gendsp       # Utility: 24dB/oct 4th-order Butterworth LPF
│   ├── offset-spline-random.gendsp
│   ├── poisson-cloud.gendsp
│   ├── precision-svf-48db.gendsp
│   ├── pulsar-synth.gendsp
│   ├── sature-delay.gendsp
│   ├── tape-hysteresis.gendsp
│   ├── ufo.gendsp
│   ├── ufo-core.gendsp             # Core variant with RNBO-flat rampsmooth codebox
│   ├── ufo-core-simple.gendsp      # Lightweight core LFO phase generator
│   ├── volt-drama.gendsp
│   ├── volt-syphon.gendsp
│   ├── waveguide-string.gendsp
│   └── zdf-diode-ladder.gendsp
├── aether-drift.maxpat             # Parallel Delay & 8 Allpass Diffuser
├── aether-particle.maxpat          # 4-Voice Asynchronous Granular & FDN Reverb
├── bernoulli-gate.maxpat           # Bernoulli Trial Probability Gate
├── cswitch-tremolo.maxpat          # Granular Chopper & Trapezoidal LFO
├── curvature-shaper.maxpat         # Non-Linear Curve Transfer Function
├── delays-delays.maxpat            # 32-Tap Delay & 16-Channel Spatializer
├── erbeverb-clone.maxpat           # Unitary 4x4 Hadamard FDN Reverb
├── frost-machine.maxpat            # Reverb, Pre-Diffusers, Fuzz & Ducking
├── householder-fdn-16.maxpat       # 16x16 Householder Matrix Spatial Reverb
├── lorenz-rossler-chaos.maxpat     # RK4 Lorenz & Rössler Strange Attractors
├── offset-spline-random.maxpat     # 6-Point Hermite Spline Random Walk
├── poisson-cloud.maxpat            # Stochastic Poisson Pulse Burst Generator
├── precision-svf-48db.maxpat       # 8-Stage Cascaded 48dB/oct SVF Filter
├── pulsar-synth.maxpat             # Curtis Roads Pulsar Microsound Synthesizer
├── sature-delay.maxpat             # Lo-Fi Character Delay with Tilt EQ & Diffusion
├── tape-hysteresis.maxpat          # Jiles-Atherton Magnetic Hysteresis Waveshaper
├── ufo.maxpat                      # Multi-Waveform LFO & Rampsmooth Slew Limiter
├── volt-drama.maxpat               # Dual-Stage Distortion, Moog Ladder & Delay
├── volt-syphon.maxpat              # Voltage-Starved Ring Modulator
├── waveguide-string.maxpat         # 4-Voice Polyphonic Waveguide with Detune
└── zdf-diode-ladder.maxpat         # Zero-Delay Feedback TB-303 Diode Filter
```

> **Note:** The local `testing-and-redundancies/` directory holds developmental drafts and is excluded via `.gitignore`.

---

## 🎛️ Algorithmic Index (Alphabetical Order)

| Model Name | Domain | Standalone Gendsp | Demo Patcher | In / Out | Core Algorithmic Architecture |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Aether Drift** | Spatial & Reverbs | [`aether-drift.gendsp`](gendsp/aether-drift.gendsp) | [`aether-drift.maxpat`](aether-drift.maxpat) | 2 In / 2 Out | Schroeder-Moorer parallel delay + 8-stage allpass series with sine modulation |
| **Aether Particle** | Granular | [`aether-particle.gendsp`](gendsp/aether-particle.gendsp) | [`aether-particle.maxpat`](aether-particle.maxpat) | 2 In / 2 Out | 4-voice asynchronous granular sampler + 20s ring buffer + unitary 4x4 Hadamard FDN |
| **Bernoulli Gate** | Stochastic | [`bernoulli-gate.gendsp`](gendsp/bernoulli-gate.gendsp) | [`bernoulli-gate.maxpat`](bernoulli-gate.maxpat) | 1 In / 3 Out | Phasor/zero-crossing detector + Bernoulli trial decision router + latched binary state |
| **CSwitch Tremolo** | Modulation | [`cswitch-tremolo.gendsp`](gendsp/cswitch-tremolo.gendsp) | [`cswitch-tremolo.maxpat`](cswitch-tremolo.maxpat) | 2 In / 4 Out | Anti-lock phase accumulator (down to 0.01 Hz) + trapezoidal envelope + S&H 2-pole BPF |
| **Curvature Shaper** | Modulation | [`curvature-shaper.gendsp`](gendsp/curvature-shaper.gendsp) | [`curvature-shaper.maxpat`](curvature-shaper.maxpat) | 2 In / 2 Out | Symmetric S-curve & exact functional inverse interpolator ($p = 2^{\text{shape}\cdot k}$) |
| **Delays Delays** | Delays | [`delays-delays.gendsp`](gendsp/delays-delays.gendsp) | [`delays-delays.maxpat`](delays-delays.maxpat) | 2 In / 20 Out | 32-tap delay line + 16 spatial taps + ladder spectral filter + sidechain ducking |
| **Erbeverb Clone** | Spatial & Reverbs | [`erbeverb-clone.gendsp`](gendsp/erbeverb-clone.gendsp) | [`erbeverb-clone.maxpat`](erbeverb-clone.maxpat) | 2 In / 2 Out | Unitary 4x4 Hadamard feedback matrix + prime delay lengths + tanh soft limiting |
| **Frost Machine** | Granular | [`frost-machine.gendsp`](gendsp/frost-machine.gendsp) | [`frost-machine.maxpat`](frost-machine.maxpat) | 2 In / 2 Out | 4 allpass pre-diffusers + cross-coupled chorus tank + post-fuzz + sidechain pump |
| **Householder FDN 16** | Spatial & Reverbs | [`householder-fdn-16.gendsp`](gendsp/householder-fdn-16.gendsp) | [`householder-fdn-16.maxpat`](householder-fdn-16.maxpat) | 2 In / 2 Out | 16-delay FDN with $O(N)$ Householder reflection matrix $H = I - \frac{2}{N}\mathbf{1}\mathbf{1}^T$ |
| **Lorenz-Rössler Chaos** | Modulation | [`lorenz-rossler-chaos.gendsp`](gendsp/lorenz-rossler-chaos.gendsp) | [`lorenz-rossler-chaos.maxpat`](lorenz-rossler-chaos.maxpat) | 2 In / 4 Out | 4th-Order Runge-Kutta (RK4) numerical integration of 3D non-linear ODE attractors |
| **Offset Spline Random** | Stochastic | [`offset-spline-random.gendsp`](gendsp/offset-spline-random.gendsp) | [`offset-spline-random.maxpat`](offset-spline-random.maxpat) | 2 In / 4 Out | Bounded random walk + 6-point FIFO shift register + cubic Hermite spline interpolation |
| **Poisson Cloud** | Stochastic | [`poisson-cloud.gendsp`](gendsp/poisson-cloud.gendsp) | [`poisson-cloud.maxpat`](poisson-cloud.maxpat) | 2 In / 3 Out | Inverse transform Poisson point process $\Delta t = -\frac{\ln(U)}{\lambda}$ PWM burst generator |
| **Precision SVF 48dB** | Filters | [`precision-svf-48db.gendsp`](gendsp/precision-svf-48db.gendsp) | [`precision-svf-48db.maxpat`](precision-svf-48db.maxpat) | 2 In / 2 Out | 4 cascaded SVF stages per channel (48 dB/oct LP/HP) + log smoothing + nonlinear drive |
| **Pulsar Synth** | Granular | [`pulsar-synth.gendsp`](gendsp/pulsar-synth.gendsp) | [`pulsar-synth.maxpat`](pulsar-synth.maxpat) | 2 In / 2 Out | Curtis Roads pulsar synthesis: fundamental rate $f_0$, pulsaret formant $f_f$, duty ratio $d/T$ |
| **Sature Delay** | Delays | [`sature-delay.gendsp`](gendsp/sature-delay.gendsp) | [`sature-delay.maxpat`](sature-delay.maxpat) | 2 In / 2 Out | Fractional tape delay + dual degradation (bitcrush vs tape sag) + tilt EQ + allpass diffusion |
| **Tape Hysteresis** | Distortion | [`tape-hysteresis.gendsp`](gendsp/tape-hysteresis.gendsp) | [`tape-hysteresis.maxpat`](tape-hysteresis.maxpat) | 2 In / 2 Out | Discrete Jiles-Atherton differential magnetic domain formulation evaluating $\frac{dM}{dH}$ |
| **UFO Multi-LFO** | Modulation | [`ufo.gendsp`](gendsp/ufo.gendsp) | [`ufo.maxpat`](ufo.maxpat) | 2 In / 1 Out | Multi-waveform oscillator + exponential curvature shaping + GenExpr rampsmooth slew limiter |
| **Volt Drama** | Distortion | [`volt-drama.gendsp`](gendsp/volt-drama.gendsp) | [`volt-drama.maxpat`](volt-drama.maxpat) | 2 In / 2 Out | Polynomial/Tarrabia dual waveshaper + 4-pole Moog ladder + 4-voice unison + recursive delay |
| **Volt Syphon** | Distortion | [`volt-syphon.gendsp`](gendsp/volt-syphon.gendsp) | [`volt-syphon.maxpat`](volt-syphon.maxpat) | 2 In / 2 Out | Supply-starved four-quadrant multiplier + envelope-tracking dynamic carrier |
| **Waveguide String** | Physical | [`waveguide-string.gendsp`](gendsp/waveguide-string.gendsp) | [`waveguide-string.maxpat`](waveguide-string.maxpat) | 2 In / 2 Out | 4-voice polyphonic waveguide string model with detuning (unison to noise), dispersion & bridge saturation |
| **ZDF Diode Ladder** | Filters | [`zdf-diode-ladder.gendsp`](gendsp/zdf-diode-ladder.gendsp) | [`zdf-diode-ladder.maxpat`](zdf-diode-ladder.maxpat) | 2 In / 2 Out | Topology-Preserving Transform (TPT) Zero-Delay Feedback 4-pole diode ladder (TB-303 model) |

---

## 🔬 Integration & Usage

### Standalone Patcher Instantiation
```text
[gen~ @gen waveguide-string]
[gen~ @gen zdf-diode-ladder]
[mc.gen~ @chans 2 @gen cswitch-tremolo]
```

### Embedded Target Compilation (Daisy / Oopsy)
All `.gendsp` definitions follow single-sample, buffer-safe GenExpr syntax without external dependencies, compiling directly to target boards (Daisy Seed, Pod, Patch, Petal) via `oopsy`.

### C++ Source Generation
Within Max, click **Export Code** in any `gen~` inspector or dispatch `exportcode` to generate deterministic, allocation-free C++ DSP implementations suitable for VST/AU, JUCE, or embedded microcontrollers.

---

## ⚖️ Attribution & License

- **Design & Curation:** Max Bruckert (2026)
- **Computer-Assisted DSP Collaboration:** Gemini
- **Environment:** MaxMSP 8 / 9 by Cycling '74
- **License:** MIT / Open Academic License
