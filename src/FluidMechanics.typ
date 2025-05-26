#import "@local/math:1.0.0": *

= Fluid Mechanics

== Conservation Laws

#env("Definition")[
  A *fluid* is a substance that deforms continuously under the influence of a shear stress, no matter how small that shear stress may be.
]

#env("Assumption", name: "The continuum hypothesis")[
  In studying macroscopic phenomena of flow problems, we replace the discrete molecular structure of matter by a distribution, called a *continuum*, so that fluid properties such as density $rho$, pressure $p$, velocity $u$, and temperature $T$ are continuous (or even smooth) functions defined at every point of the fluid.
]

#env("Definition")[
  The *(fluid) flow map* $phi: D times RR times RR -> D$ is the map that takes the initial position $mathbf(x)_(0)$ of a Lagrangian particle $mathbf(x)$, the initial time $t_(0)$ and the time increment $k$, and returns $mathbf(x)(t_(0) + k)$, the position of $mathbf(x)$ at the final time $t_(0) + k$:

  $ phi(mathbf(x)_(0), t_(0), k) := mathbf(x)(t_(0) + k) = mathbf(x)_(0) + integral_(t_(0))^(t_(0) + k) mathbf(u)(mathbf(x)(t), t) upright(d) t, $

  with fixed $t$, let $phi_(t)$ denote the map $mathbf(x) -> phi(mathbf(x), 0, t)$, i.e., $phi_(t)$ advances each fluid particle from its position at $t = 0$ to its position at time $t$.
]

#env("Definition")[
  In the *Lagrangian description* of fluid motions, we follow individual fluid particles as they move aboutand determine how the fluid properties associated with theseparticles change as a function of time.
]

#env("Definition")[
  In the Eulerian description of fluid motions, we observe the physical properties (e.g. velocity) of fluid particles passing at each fixed point in space. Thus the flow properties are functions of both space and time.
]

#env("Definition")[
  A *streamline* $mathbf(x)(s)$ at a fixed time $t$ passing through $mathbf(p)$ is a curve that is everywhere tangent to the velocity field $mathbf(u)(mathbf(x), t)$, i.e.,

  $
    cases(
      (upright(d) mathbf(x)) / (upright(d) s) = mathbf(u)(mathbf(x)(s), t)\, #h(1em) t "fixed"\,,
      mathbf(x)(0) = mathbf(p).
    )
  $
]

#env("Definition")[
  A *pathline* (or *trajectory*) of a given fluid particle $mathbf(x)_(0)$ at time $t_(0)$ is the curve traced out by the particle in a time interval $(0, k)$, i.e.,

  $ Phi_(t_(0))^(k) (mathbf(x)_(0)) = { phi(x_(0), t_(0), tau): tau in (0, k) }. $
]

#env("Definition")[
  A *streakline* (or *dye line*) at a particular time $t$ of interest through a fixed point $mathbf(p)$ in a time interval $(0, k)$ is the curve consisting of all particles in a flow that have previously passed through $mathbf(p)$, i.e.,

  $ Psi_(t)^(k) (mathbf(p)) := { phi(mathbf(p), t - tau, tau): tau in (0, k) }. $
]

#env("Definition")[
  A *(fluid) system* is a collection of matter of fixed identity (always the same fluid particles), which may move, flow, and interact with its surroundings.
]

#env("Definition")[
   A fluid flow is *steady* (or *stationary*) if the velocity $mathbf(u)$ at any given point in space does not varywith time, i.e., $(partial mathbf(u)) / (partial t) = mathbf(0)$.
]

#env("Lemma")[
  If the velocity field $mathbf(u)(mathbf(x), t)$ is Lipschitz continuous in space and continuous in time, then $phi_(t)$ is injective for each fixed $t$.
]
