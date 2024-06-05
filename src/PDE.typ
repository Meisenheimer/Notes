#import "../config.typ": env, mathbf

= Partial Differential Equation

#env("Definition")[
  A $mathbf(2)$*th order* *partial differential equation* in $RR^n$ takes the form

  $ sum_(i=0)^n sum_(j=0)^n a_(i j) (mathbf(x)) u_(x_i x_j) + sum_(i=0)^n b_(i) (mathbf(x)) u_(x_i) + c(mathbf(x)) u(mathbf(x)) = f(mathbf(x)), $

  where $a_(i j)(mathbf(x)) = a_(j i)(mathbf(x))$.
]

#env("Definition")[
  Let $A(mathbf(x)) = (a_(i j)(mathbf(x)))_(n times n)$ be a symmetric matrix, and $lambda_1 gt.eq dots.c gt.eq lambda_n$ the eigenvalues of $A$ at $mathbf(x)_0$, then

  - The equation is *elliptic* at $mathbf(x)_0$ if for $i = 1, dots, n$, $lambda_i < 0$
  - The equation is *parabolic* at $mathbf(x)_0$ if $lambda_1 = 0$ and for $i = 2, dots, n$, $lambda_i < 0$;
  - The equation is *hyperbolic* at $mathbf(x)_0$ if $lambda_1 > 0$ and for $i = 2, dots, n$, $lambda_i < 0$;
]

#env("Definition")[
  The boundary conditions for the unknown function $y$, constants $c_0, c_1$ specified by the boundary conditions, and known scalar functions $g, h$ specified by the boundary conditions, where

  - *Dirichlet boundary condition*: $y = g$;
  - *Neumann boundary condition*: $(partial y)/(partial n) = g$;
  - *Robin boundary condition*: $c_0 y + c_1 (partial y)/(partial n) = g$ where $c_0, c_1 eq.not 0$;
  - *Mixed boundary condition*: $y = g$ and $c_0 y + c_1 (partial y)/(partial n) = h$ where $c_0, c_1 eq.not 0$;
  - *Cauchy boundary condition*: $y = g$ and $(partial y)/(partial n) = h$.
]

== Poisson's Equation

#env("Definition")[
  A *Poisson's equation* in $RR^n$ takes the form

  $ - Delta u = f(mathbf(x)), $

  where $Delta$ is the Laplace operator, $u, f: RR^n -> RR$ and $mathbf(x) in RR^n$.
]

== Heat Equation

#env("Definition")[
  A *Heat equation* in $RR^n times RR$ takes the form

  $ (partial u)/(partial t) - a^2 Delta u = f(mathbf(x), t), $

  where $Delta$ is the Laplace operator on $RR^n$, $u, f: RR^n times RR -> RR$ and $mathbf(x) in RR^n$.
]

== Wave Equation

#env("Definition")[
  A *Wave equation* in $RR^n times RR$ takes the form

  $ (partial^2 u)/(partial t^2) - a^2 Delta u = f(mathbf(x), t), $

  where $Delta$ is the Laplace operator on $RR^n$, $u, f: RR^n times RR -> RR$ and $mathbf(x) in RR^n$.
]
