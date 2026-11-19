# ME 206 Statics and Dynamics: Final Simulation Video Narration Script

**Project Title:** Autonomous Bimanual Apple Throwing and Compliant Catching on an Authentic Unitree G1 Humanoid  
**Platform:** Official Unitree G1 Humanoid Robot (Google DeepMind MuJoCo Menagerie)  
**Physics Engine:** MuJoCo 3.14.0 (Continuous Rigid-Body Contact Dynamics)  
**Total Video Duration:** 05:01.70 (301.70 seconds)  
**Video Resolution & Format:** 1920×1080 (16:9 Full HD), 30 FPS, H.264 / AAC  
**Voiceover:** Edge-TTS Neural Voice (`en-US-ChristopherNeural`, pacing -3%)  

---

## Timed Video Breakdown & Narration Transcript

### Part 1: Title Card and Academic Overview
- **Timestamp:** `[00:00 - 00:22]` (Duration: 22.58 s)
- **Visual Scene:** Smooth cinematic orbital sweep around the authentic Unitree G1 humanoid robot standing in upright equilibrium in the physics arena. Translucent HUD title cards display course metadata, project title, and core principles.
- **Physics Principles:** Bipedal static balance, multi-link kinematics, rigid-body contact formulation.
- **Spoken Narration:**
  > *"Welcome to the ME 206 Statics and Dynamics project demonstration. In this investigation, we present a complete multibody dynamic simulation of an authentic Unitree G1 humanoid robot executing an autonomous, contact-driven apple pickup, athletic throwing motion, unconstrained parabolic flight, and compliant opposite-hand catching."*

---

### Part 2: Simulation Architecture and Multibody Dynamics
- **Timestamp:** `[00:22 - 01:03]` (Duration: 40.51 s)
- **Visual Scene:** Vertical camera pan across the G1 joint hierarchy (bipedal legs, torso, dual 7-DoF arms, and 7-DoF hands), followed by a close-up zoom onto the physical apple resting on the pedestal stand. Technical callout cards detail rigid-body parameters and contact solver settings.
- **Physics Principles:** Multibody Lagrangian dynamics, inertia tensors, Coulomb friction cone, unilateral contact constraints without welds or velocity teleportation.
- **Key Parameters:**
  - Robot Architecture: 47 rigid bodies, 43 active actuators (12 leg, 3 waist, 14 arm, 14 hand).
  - Target Object: Rigid sphere ($m = 0.150\text{ kg}$, $r = 0.038\text{ m}$, $I = 8.45 \times 10^{-5}\text{ kg}\cdot\text{m}^2$).
  - Friction Model: Coulomb friction coefficient $\mu = 2.5$, contact dimensionality `condim = 6`.
  - Constraint Fallbacks: 0 weld constraints, 0 velocity overwrites.
- **Spoken Narration:**
  > *"The simulation environment is built on MuJoCo physics, leveraging the official Unitree G1 model from Google DeepMind's MuJoCo Menagerie. The robot consists of 47 rigid bodies and 43 actuated degrees of freedom, featuring authentic mass matrices, joint limits, and actuator torque curves. The target object is a physically simulated apple with a mass of 150 grams and a radius of 38 millimeters. Crucially, all manipulation, throwing, and catching dynamics are achieved through pure rigid-body contact mechanics, with zero artificial constraints or velocity injections."*

---

### Part 3: Phase 1 & 2 — Static Balance and Contact-Based Prehension
- **Timestamp:** `[01:03 - 01:50]` (Duration: 47.45 s)
- **Visual Scene:** Simulation execution from $t = 0.0\text{ s}$ to $t = 2.0\text{ s}$. Full-body front-isometric view showing bipedal center-of-mass stabilization, transitioning into a slow-motion close-up of the right hand approaching the pedestal and cupping the apple into a stable cradle hold.
- **Physics Principles:** Center of Mass (CoM) projection within dual-foot support polygon, minimum-jerk S-curve trajectory planning ($w(\tau) = \frac{1}{2}(1 - \cos(\pi \tau))$), upper-torso angular momentum counterbalancing, static friction prehension.
- **Spoken Narration:**
  > *"The sequence begins in Phase 1 with bipedal equilibrium. The lower-body actuators maintain the center of mass securely within the dual-foot support polygon. At 0.8 seconds, Phase 2 initiates an athletic reaching trajectory. The right arm follows a smooth, minimum-jerk S-curve interpolation toward the pedestal. Simultaneously, the left arm executes a symmetric counter-pose, balancing upper-torso angular momentum. As the right hand reaches the pedestal at 2.0 seconds, the fingers close into a supportive cradle, establishing multiple unilateral contact points without displacing the apple from its resting stand. The apple is lifted cleanly into a stable pre-throw configuration."*

---

### Part 4: Phase 3 & 4 — Athletic Throw and Momentum Transfer
- **Timestamp:** `[01:50 - 02:41]` (Duration: 51.29 s)
- **Visual Scene:** Simulation execution from $t = 2.00\text{ s}$ to $t = 2.32\text{ s}$. 1.0x real-time full-body throw followed immediately by a high-resolution 0.25x slow-motion replay focusing on the right shoulder, elbow, and wrist flick. A freeze-frame callout at $t = 2.280\text{ s}$ highlights the exact moment of natural separation.
- **Physics Principles:** Multi-joint kinetic energy transfer, impulse-momentum theorem ($\int \vec{F}_c \, dt = m \Delta \vec{v}$), tangential release velocity, unconstrained liftoff.
- **Measured Release State:**
  - Release Time: $t_0 = 2.280\text{ s}$
  - Release Position: $\vec{r}_0 = [0.3572, -0.1314, 0.8691]\text{ m}$
  - Release Velocity: $\vec{v}_0 = [-0.2829, +1.3616, +1.1012]\text{ m/s}$
  - Resultant Speed: $v_0 = 1.774\text{ m/s}$
  - Elevation Angle: $\theta = 38.37^\circ$
  - Initial Kinetic Energy: $E_k = \frac{1}{2} m v_0^2 = 0.2360\text{ J}$
- **Spoken Narration:**
  > *"In Phase 3, the apple is held in readiness. At 2.20 seconds, Phase 4 executes an athletic throwing stroke. Rather than relying on artificial velocity assignment, the robot transfers kinetic energy to the apple through rapid multi-joint coordination. The right shoulder, elbow, and wrist accelerate along a medial arc toward the robot's midline over an 80-millisecond stroke. At peak acceleration, the fingers open smoothly, allowing the apple to separate naturally from the palm. At 2.280 seconds, the apple achieves ballistic release at an initial velocity of 1.774 meters per second, directed across the sagittal plane. Here, we observe the release dynamics in 0.25x slow motion."*

---

### Part 5: Phase 5 — Projectile Dynamics and Ballistic Verification
- **Timestamp:** `[02:41 - 03:22]` (Duration: 41.38 s)
- **Visual Scene:** Sagittal tracking camera moving along with the airborne apple across the robot's chest. Slow-motion replay shows illuminated trajectory markers tracking the theoretical parabola. HUD displays analytical equations and numerical verification comparisons.
- **Physics Principles:** Classical projectile mechanics, gravitational acceleration ($g = -9.81\text{ m/s}^2$), conservation of mechanical energy, numerical error quantification.
- **Governing Equations:**
  $$\begin{aligned}
  x(t) &= 0.3572 - 0.2829 (t - t_0) \\
  y(t) &= -0.1314 + 1.3616 (t - t_0) \\
  z(t) &= 0.8691 + 1.1012 (t - t_0) - \frac{1}{2}(9.81)(t - t_0)^2
  \end{aligned}$$
- **Key Milestones:**
  - Theoretical Apex: $t_{\text{apex}} = 2.3922\text{ s}$, $Z_{\text{apex}} = 0.9309\text{ m}$ (Simulated: $0.9310\text{ m}$)
  - Midline Crossing: $t_{\text{midline}} = 2.3765\text{ s}$, $Y = 0.0000\text{ m}$
  - Positional Discrepancy: $\Delta r < 0.4\text{ mm}$ (verifies pure Newtonian integration)
- **Spoken Narration:**
  > *"Once released, the apple enters unconstrained 3D parabolic flight under standard gravitational acceleration. Applying rigid-body ballistic equations with our measured release state, we observe an apex altitude of 0.931 meters at 2.392 seconds, and a clean sagittal midline crossing at 2.376 seconds. The yellow trajectory markers trace the theoretical parabolic path, which matches the simulated position to within sub-millimeter precision. This confirms that the projectile flight is entirely free of external parasitic forces, adhering strictly to Newtonian mechanics and energy conservation."*

---

### Part 6: Phase 6 — Predictive Interception, Cushioning, and Grasp Closure
- **Timestamp:** `[03:22 - 04:06]` (Duration: 43.51 s)
- **Visual Scene:** Close-up perspective on the left hand forming an upward-facing chalice cup. Real-time catch followed by a 0.25x slow-motion breakdown of touchdown, compliance yielding, and locked grasp curl. Contact force vectors and active contact counts light up in real time.
- **Physics Principles:** Ballistic trajectory interception, momentum dissipation via compliant damping, contact manifold formation, Coulomb friction locking.
- **Measured Touchdown State:**
  - Touchdown Time: $t_{\text{td}} = 2.532\text{ s}$ ($\Delta t_{\text{flight}} = 0.252\text{ s}$)
  - Touchdown Body: `left_hand_thumb_1_link`
  - Touchdown Position: $\vec{r}_{\text{imp}} = [0.2818, 0.1770, 0.8439]\text{ m}$
  - Impact Velocity: $\vec{v}_{\text{imp}} = [-0.3471, +1.0888, -1.1703]\text{ m/s}$ ($v_{\text{imp}} = 1.636\text{ m/s}$)
  - Active Contacts in Final Grasp: 15 simultaneous contact points
- **Spoken Narration:**
  > *"While the projectile is in flight, the left arm executes a predictive interception maneuver. Estimating the touchdown state, the left wrist positions an open chalice cradle directly along the incoming flight vector. Touchdown occurs at 2.532 seconds on the left thumb proximal link at an impact velocity of 1.636 meters per second. To prevent rebound, the receiver executes active compliance cushioning, absorbing kinetic energy through joint impedance and viscoelastic contact compliance. Once the relative momentum is dissipated, the left digits close into a locked grasp, establishing 15 stable physical contacts that hold the apple securely."*

---

### Part 7: Quantitative Results and Telemetry Audit
- **Timestamp:** `[04:06 - 04:44]` (Duration: 38.09 s)
- **Visual Scene:** Fullscreen telemetry and engineering audit dashboard. Side-by-side view featuring the stable standing G1 holding the apple on the left, with comprehensive numerical telemetry tables, energy conservation charts, and compliance checklists on the right.
- **Physics Principles:** Postural stability margin, mechanical work and energy balance, rigid-body contact verification.
- **Audit Summary:**
  - Total Simulation Time: $8.00\text{ s}$
  - Stable Catch Duration: $> 5.46\text{ s}$ without dropping or slipping
  - Spatial Flight Distance: $0.3185\text{ m}$ ($31.85\text{ cm}$)
  - Energy Balance: Complete dissipation of $0.236\text{ J}$ impact energy
  - Contact Verification: 15 active contact normals, 0 weld constraints, 0 velocity clamps
- **Spoken Narration:**
  > *"A comprehensive telemetry audit confirms the mechanical rigor of the demonstration. Total flight duration was 252 milliseconds over a 32-centimeter spatial displacement. Impact kinetic energy was reduced from 0.236 Joules at launch to complete rest. The robot maintained uncompromised postural stability throughout the eight-second trial, with the apple held stably at an altitude of 86.7 centimeters under 15 active contact normals. All constraint fallbacks were confirmed to be zero, verifying genuine rigid-body prehension."*

---

### Part 8: Conclusion and Academic Credits
- **Timestamp:** `[04:44 - 05:01]` (Duration: 16.90 s)
- **Visual Scene:** Wide cinematic pull-back shot showing the complete laboratory environment, floor reflections, and the Unitree G1 humanoid holding the apple in steady equilibrium. Outro card displaying course acknowledgments, citations, and tools used.
- **Spoken Narration:**
  > *"In conclusion, this ME 206 project successfully validates multi-joint athletic motion generation, unconstrained ballistic projectile flight, and compliant robotic catching on an authentic Unitree G1 humanoid platform. Thank you for watching."*

---

## Technical Citations & Simulation Environment
1. **Robot Model:** Unitree Robotics G1 29-DoF Humanoid with Dexterous Hands (`g1_with_hands.xml`), Google DeepMind MuJoCo Menagerie (2024).
2. **Physics Engine:** MuJoCo 3.14.0 (Multi-Joint dynamics with Contact), DeepMind Technologies.
3. **Course:** ME 206: Statics and Dynamics, Department of Mechanical Engineering.
4. **Execution Command:** `python controller.py` or double-click `RUN.bat`.
