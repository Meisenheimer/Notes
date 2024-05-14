#import "../config.typ": env, mathbf

= Ordinary Differential Equation

#env("Definition")[
  Given a function $F$, an *explicit ordinary differential equation* of order $n$ takes the form

  $ mathbf(F)(mathbf(u)^((n-1)), dots, mathbf(u)^prime, mathbf(u), t) = mathbf(u)^((n)), $

  an *implicit ordinary differential equation* of order $n$ takes the form

  $ mathbf(F)(mathbf(u)^((n)), dots, mathbf(u)^prime, mathbf(u), t) = mathbf(0), $
]

#env("Definition")[
  An ODE is *autonomous* if it does not depend on the variable x.
]

#env("Definition")[
  A ODE is *linear* if can be written as

  $ sum_(i=0)^(n) A_(i)(t) mathbf(u)^((n)) + mathbf(r)(t) = mathbf(0), $

  where $A_(i)(t)$ and $r(t)$ are continuous functions of $t$.
]

#env("Definition")[
  A linear ODE is *homogeneous* if $mathbf(r)(t) = 0$, and there is always the trivial solution $mathbf(u) equiv mathbf(0)$.
]

#env("Definition")[
  An ODE is *separable* if can be written as

  $ P_1(x) Q_1(y) = P_2(x) Q_2(y) (upright(d) y)/(upright(d) x). $
]

#env("Definition")[
  For initial value $(mathbf(u)_0, t_0) in RR^n times RR$, $T >= t_0$ and $mathbf(f): RR^n times [t_0, T] -> RR^n$, the *initial value problem* (IVP) is to find $u(t) in C^1([t_0, T])$ satisfies

  $ mathbf(u)^prime = mathbf(f) (mathbf(u), t), #h(1em) mathbf(u) (t_0) = mathbf(u)_0. $
]

#env("Theorem")[
  Given an IVP, denoted by $u_0 = u$, $u_i, i = 1, dots, n$ the $i$th derivative of $u$, then the ODE

  $ mathbf(F)(mathbf(u)^((n-1)), dots, mathbf(u)^prime, mathbf(u), t) = mathbf(u)^((n)) $

  can be written as an IVP,

  $ mat(mathbf(u)_0^prime; dots.v; mathbf(u)_(n-2)^prime; mathbf(u)_(n-1)^prime) = mat(mathbf(u)_1; dots.v ; mathbf(u)_(n-1); mathbf(F)(mathbf(u)_(n-1), dots, mathbf(u)_1, mathbf(u)_0, t)). $
]

== General Theory

#env("Theorem", name: "Peano existence theorem")[
  Given an IVP with an open set $Omega subset.eq RR^n times RR$, if $mathbf(f) (mathbf(u), t) in C(Omega)$ and $(mathbf(u)_0, t_0) in Omega$, then there is a local solution $tilde(mathbf(u)): U -> RR^n$ satisfies the IVP, where $U$ is a neighbourhood of $t_0$ in $RR$.
]

#env("Theorem", name: "Picard–Lindelöf theorem")[
  Given an IVP with an open set $Omega subset.eq RR^n times RR$, if $mathbf(f) (mathbf(u), t): Omega -> RR^n$ is continuous in $t$ and Lipschitz continuous in $mathbf(u)$ and $(mathbf(u)_0, t_0) in Omega$, then there is a unique local solution $tilde(mathbf(u)): U -> RR^n$ satisfies the IVP, where $U$ is a neighbourhood of $t_0$ in $RR$.
]

#env("Theorem", name: "Comparison theorem")[
  Given two IVPs

  $ mathbf(u)_1^prime = mathbf(f)_1 (mathbf(u)_1, t), #h(1em) mathbf(u)_1 (t_0) = mathbf(u)_0, \
    mathbf(u)_2^prime = mathbf(f)_2 (mathbf(u)_2, t), #h(1em) mathbf(u)_2 (t_0) = mathbf(u)_0, $

  and a open set $Omega subset.eq RR^n times RR$, if for all $(mathbf(u), t) in Omega$, $mathbf(f)_1 (mathbf(u), t) < mathbf(f)_2 (mathbf(u), t)$, then

  $ cases(
    mathbf(u)_1 (t) > mathbf(u)_2 (t)\, #h(1em) t > t_0\, (mathbf(u)_1 (t), t)\, (mathbf(u)_2 (t), t) in Omega\,,
    mathbf(u)_1 (t) < mathbf(u)_2 (t)\, #h(1em) t < t_0\, (mathbf(u)_1 (t), t)\, (mathbf(u)_2 (t), t) in Omega\,,
  ) $
]

// == Exact solutions

// #env("Example")[
//   Given an initial point $(y_0, x_0)$, and a separable equation

//   $ P_1(x) Q_1(y) = P_2(x) Q_2(y) (upright(d) y)/(upright(d) x), $

//   the solution of the equation is

//   $ integral_(x_0)^x (P_1(t))/(P_2(t)) upright(d) t = integral_(y_0)^y (Q_2(t))/(Q_1(t)) upright(d) t. $
// ]

// #env("Example")[
//   Given an initial point $(y_0, x_0)$, and a first-order homogeneous equation

//   $ (upright(d) y)/(upright(d) x) = F(y/x), $

//   the solution of the equation is

//   $ ln(C x) = integral_(y_0 / x_0)^(y / x) 1 / (F(t) - t) upright(d) t, $

//   where $C$ is a constant.
// ]
