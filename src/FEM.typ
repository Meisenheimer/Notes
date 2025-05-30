#import "@local/math:1.0.0": *

= Finite Element Method

#env("Definition")[
  A function $a(dot.c, dot.c)$ is a *bilinear function* if for all $u, v in V$, $k_(1), k_(2) in F$,

  - $a(k_(1) u + k_(2) v, w) = k_(1) a(u, w) + k_(2) a(v, w)$,
  - $a(u, k_(1) v + k_(2) w) = k_(1) a(u, v) + k_(2) a(u, w)$.

  A bilinear function is *bounded* or *continuous* if $norm(dot.c)$ is the norm on $V$, and for all $u, v in V$, exists $M gt 0$, such that

  $
    abs(a(u, v)) lt.eq M norm(u) norm(v).
  $

  A bilinear function is *symmetric* if for all $u, v in V$, $a(u, v) = a(v, u)$.

  A bilinear function is *$V$-elliptic* if exists $alpha gt 0$, for all $v in V$,

  $
    alpha norm(v)^(2) lt.eq a(v, v).
  $
]

#env("Definition", tag: "def-fem-opt-problem")[
  Given a normed linear space $V$ with a bounded bilinear function $a(dot.c, dot.c)$ on it and $f in V^(*)$, then for $U subset V$,

  $
    J(u) = inf_(v in U) J(v), J(v) = 1/2 a(v,v) - f(v).
  $
]

#env("Theorem")[
  The solution to problem #envref(<def-fem-opt-problem>) exists and unique if

  - $V$ is complete,
  - $U$ is a closed convex subset of $V$,
  - $a(dot.c, dot.c)$ is symmetric and $V$-elliptic.
]

#env("Theorem")[
  If $u$ is the solution to problem #envref(<def-fem-opt-problem>), if and only if

  $
    forall v in U, a(u, v-u) gt.eq f(v-u).
  $

  where $a(u, u) = f(u)$ if $U$ is a convex cone with the apex $mathbf(0)$, $forall v in U, a(u, v) = f(v)$ if $U$ is a closed subset of $V$.
]

#env("Theorem", name: "Lax-Milgram lemma")[
  Given a Hilbert space $V$, $a(dot.c, dot.c): V times V -> RR$ is a continuous V-elliptic bilinear function, $f: V -> RR$ a continuous linear functional, then there exists only $u in V$, such that

  $
    forall v in V, a(u, v) = f(v).
  $
]

#env("Lemma")[
  Given $u in H_(0)^(2) (Omega)$, $abs(dot.c)$ is the Sobolev seminorm, $norm(dot.c)$ is the Sobolev norm, then

  $ norm(Delta u)_(0, Omega)^(2) = abs(u)_(2, Omega)^(2). $
]

#env("Theorem", name: "Poincare-Friedrichs")[
  Given a bounded set $Omega$, $v in H_(0)^(m) (Omega)$, then there exists a constant $C(Omega)$, such that

  $ norm(v)_(0, Omega) lt.eq C(Omega) abs(v)_(m, Omega). $
]

== Galerkin Method

#env("Notation")[
  $V_(h) subset V$ denotes a given finite dimensional subspace.
]

#env("Definition")[
  The idea of *Galerkin method* is to solve the $u_(h) in V_(h)$, such that

  $ a(u_(h), v_(h)) = f(v_(h)). $
]

#env("Definition")[
  The idea of *Ritz method* is to solve the $u_(h) in V_(h)$, such that

  $ J(u_(h)) = min_(v_(h) in V_(h)) J(v_(h)), $

  where

  $ J(v) = 1/2 a(v, v) - f(v). $
]

#env("Definition")[
  A *$k$-simplex* is a $k$-dimensional convex hull of $k + 1$ vertices. Given $x_(0), dots, x_(n) in RR^(n)$ affinely independent vectors, then a $n$-simplex is defined as

  $ K_(n) = {sum_(i=1)^(n) theta_(i) x_(i): sum_(i=1)^(n) theta_(i) = 1, forall j in [0, n] inter ZZ, theta_(j) gt.eq 0}. $
]

#env("Definition")[
  Let $dim(V_(h)) = N$ and $phi_(1), dots, phi_(N)$ be the basis functions of $V_(N)$, then the matrix $K = (a(phi_(i), phi_(j)))_(N times N)$ is the *stiffness matrix*, and $F = (f(phi_(i)))_(N)$ is the *load vector*.
]

#env("Theorem")[
  Let $a(dot.c, dot.c): V times V -> RR^(n)$ be a bilinear symmetric $V$-elliptic function, then the corresponding stiffness matrix is symmetric and positive definite.
]
