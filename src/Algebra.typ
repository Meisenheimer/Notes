#import "@local/math:1.0.0": *

= Algebra

== Linear Space

#env("Definition", name: "Linear Space")[
  A *linear space* over a field $FF$ is a nonempty set $V$ with a addition and a scalar multiplication that satisfies

  + Associativity of addition: $forall mathbf(x), mathbf(y) in V, mathbf(x) + mathbf(y) = mathbf(y) + mathbf(x)$,
  + Commutativity of addition: $forall mathbf(x), mathbf(y), mathbf(z) in V, (mathbf(x) + mathbf(y)) + mathbf(z) = mathbf(x) + (mathbf(y) + mathbf(z))$,
  + Identity element of addition: $exists mathbf(0) in V, forall mathbf(x), mathbf(x) + mathbf(0) = mathbf(x)$,
  + Inverse elements of addition: $forall mathbf(x) in V, exists mathbf(y) in V, " s.t. " mathbf(x) + mathbf(y) = 0$,
  + Compatibility of multiplication: $forall mathbf(x) in V, a, b in FF, (a b) mathbf(x) = a (b mathbf(x))$,
  + Identity element of multiplication: $exists 1 in FF, forall mathbf(x) in V, 1 mathbf(x) = mathbf(x)$,
  + Distributivity: $forall mathbf(x) in V, a, b in FF, (a + b) mathbf(x) = a mathbf(x) + b mathbf(x)$,
  + Distributivity: $forall mathbf(x), mathbf(y) in V, a in FF, a (mathbf(x) + mathbf(y)) = a mathbf(x) + b mathbf(y)$.
]

#env("Notation")[
  The *dimension* of a linear space $V$ is written as $dim(V)$.
]

#env("Definition")[
  Denoted by $V_1, dots, V_n$ linear spaces over a field $FF$, the *product of linear spaces* is defined as

  $ V_1 times dots.c times V_n = { (mathbf(v)_1, dots, mathbf(v)_n): mathbf(v)_1 in V_1, dots, mathbf(v)_n in V_n }, $

  which is also a linear space over $FF$.
]

#env("Definition")[
  Given a linear space $V$, a subspace $U subset V$ and $mathbf(v) in V$, the *coset* (or *affine subset*) is defined as

  $ overline(mathbf(v)) = { mathbf(w) in V: mathbf(w) = mathbf(v) + mathbf(u), mathbf(u) in U }. $
]

#env("Definition")[
  Given a linear space $V$ and a subspace $U subset V$, the *quotient space* is defined as

  $ V slash U = {mathbf(v) + U: mathbf(v) in V}. $
]

=== Linear map

#env("Definition")[
  Denoted by $V$ and $W$ the linear spaces over a field $FF$, a function $f: V -> W$ is called a linear map between $V$ and $W$ if it satisfies

  + Additivity: $forall mathbf(x), mathbf(y) in V, f(mathbf(x) + mathbf(y)) = f(mathbf(x)) + f(mathbf(y))$;
  + Homogeneity: $forall mathbf(x) in V, forall k in FF, f(k mathbf(x)) = k f(mathbf(x))$.
]

#env("Notation")[
  Denoted by $cal(L) (V, W)$ the set of all linear maps between $V$ and $W$ (it also be written as $cal(L)(V)$ if $V = W$).
]

#env("Theorem")[
  For linear space $V, W$ over a field $FF$ and linear maps $f, g in cal(L) (V, W)$, if we define

  $ forall mathbf(x) in V, forall k in FF, (f + g)(mathbf(x)) = f(mathbf(x)) + g(mathbf(x)) " and " (k f) (mathbf(x)) = k f (mathbf(x)), $

  then $cal(L) (V, W)$ is a linear space.
]

#env("Theorem")[
  For a linear map $f in cal(L) (V, W)$, $f(mathbf(0)) = f(0 mathbf(v)) = 0 f(mathbf(v)) = 0$.
]

#env("Theorem")[
  Given $mathbf(v)_1, dots mathbf(v)_n$ the basis of linear space $V$ and $mathbf(w)_1, dots mathbf(w)_n$ the basis of linear space $W$, then there exists the only linear map $f in cal(L) (V, W)$ such that

  $ forall i in {1, dots, n}, f(mathbf(v)_i)  = mathbf(w)_i. $
]

#env("Definition")[
  For a linear map $f in cal(L) (V, W)$, the *kernal* (or *null space*) of $f$ is defined as

  $ ker(f) = { mathbf(v) in V: f(mathbf(v)) = mathbf(0) }, $

  where $ker(f)$ is a subspace of $V$ and the number $dim(ker(f))$ is the *nullity* of $f$ which also written as $upright("nullity")(f)$
]

#env("Definition")[
  For a linear map $f in cal(L) (V, W)$, the *image* of $f$ is defined as

  $ im(f) = { mathbf(w) in W: mathbf(w) = f(mathbf(v)), mathbf(v) in V }, $

  where $im(f)$ is a subspace of $W$ and the number $dim(im(f))$ is the *dimension* (or *rank*) of $f$ which also written as $upright("rank")(f)$
]

#env("Theorem", name: "Rank–nullity theorem")[
  For a linear map $f in cal(L) (V, W)$,

  $ dim(ker(f)) + dim(im(f)) = dim(V). $
]

#env("Definition")[
  A *isomorphism* is a invertible linear map.
]

#env("Definition")[
  Two linear spaces are called *isomorphic* if there exists a invertible linear map between them.
]

#env("Theorem")[
  Two linear spaces $V, W$ over a field $FF$ are isomorphic iff $dim(V) = dim(W)$.
]

#env("Theorem")[
  For a linear space $V$ that $dim(V) < +infinity$ and a linear map $f in cal(L)(V)$, the following statements are equivalent:

  + $f$ is invertible;
  + $f$ is injective;
  + $f$ is surjective.
]

== Metric Space

#env("Definition", name: "Metric")[
  For a nonempty set $X$, the *metric* is a function $d: X times X -> RR$ that satisfies

  + Positive definiteness: $forall mathbf(x), mathbf(y) in X, d(mathbf(x), mathbf(y)) >= 0, d(mathbf(x), mathbf(y)) <=> mathbf(x) = mathbf(y)$,
  + Symmetry: $forall mathbf(x), mathbf(y) in X, d(mathbf(x), mathbf(y)) = d(mathbf(y), mathbf(x))$,
  + Triangle inequality: $forall mathbf(x), mathbf(y), mathbf(z) in V, d(mathbf(x), mathbf(y)) + d(mathbf(y), mathbf(z)) >= d(mathbf(x), mathbf(z))$,
]

#env("Definition", name: "Metric space")[
  A *metric space* is a set $X$ provided with a metric.
]

#env("Notation", name: "Neighbourhood")[
  For a metric space $X$, the *neighbourhood* of $mathbf(x) in X$ with radius $epsilon > 0$ is defined as

  $ U_X (mathbf(x), epsilon) = { t: d(mathbf(x), t) < epsilon, t in X }. $
]

#env("Notation", name: "Punctured neighbourhood")[
  For a metric space $X$, the *punctured neighbourhood* of $mathbf(x) in X$ with radius $epsilon > 0$ is defined as

  $ U_X^(degree)(mathbf(x), epsilon) = U_X (mathbf(x), epsilon) without { mathbf(x) } = { t: d(mathbf(x), t) < epsilon, t in X without {mathbf(x)} }. $
]

=== Completeness & Compactness

#env("Theorem", name: "Cauchy's convergence test")[
  A sequence ${ mathbf(x)_n }$ in a metric space $X$ is convergent (or said a *cauchy sequence*) iff

  $ forall epsilon > 0, exists N in NN, " s.t. " forall m, n > N, ||mathbf(x)_n - mathbf(x)_m|| < epsilon. $
]

#env("Definition", name: "Completeness")[
  A metric space $X$ is *complete* iff all cauchy sequence of $X$ is convergent in $X$.
]

#env("Theorem", name: "Supremum and infimum principle")[
  For a nonempty set $X$, if the upper/lower bound of $X$ exists, then the supremum/infimum of $X$ exists.
]
#env("Theorem", name: "The monotone bounded convergence Theorem")[
  For a bounded sequence ${ mathbf(x)_n }$, if it is increased, then

  $ lim_(n -> infinity) mathbf(x)_n = sup {mathbf(x)_n: n in NN}. $

  If it is decreased, then

  $ lim_(n -> infinity) mathbf(x)_n = inf {mathbf(x)_n: n in NN}. $
]

=== Cover

#env("Definition", name: "Cover")[
  For a metric space $S subset.eq X$, A *cover* of $S$ is a set of open sets ${ D_n }$ satisfies

  $ forall mathbf(x) in X, exists D_n, " s.t. " mathbf(x) in D_n. $
]

#env("Definition", name: "Compactness")[
  A metric space $X$ is called *compact* if every open cover of $X$ has a finite subcover.
]

=== Cantor's intersection Theorem

#env("Theorem", name: "Cantor's intersection Theorem")[
  For a decreasing sequence of nested non-empty compact, closed subsets $S_n subset.eq X, n in NN$ of a metric space, if ${ S_n }$ satisfies

  $ S_0 supset S_1, dots.c, supset S_n supset dots.c , $

  then

  $ sect.big_(k=0)^infinity S_k eq.not emptyset. $

  where there is only one point $mathbf(x) in sect.big_(k=0)^infinity S_k$ for a complete metric space.
]

#env("Corollary")[
  For decreasing sequence of nested non-empty compact, closed subsets $S_n in X, n in NN$ of a complete metric space and ${ mathbf(x) } = sect.big_(k=0)^infinity S_k$, then

  $ forall epsilon > 0, exists N > 0, " s.t. " forall n > N, X_n subset U_X (x, epsilon). $
]

=== Cluster point

#env("Definition", name: "Cluster point")[
  For a metric space $S subset.eq X$, the *cluster point* of $S$ is the point $mathbf(x) in X$ satisfies

  $ forall epsilon > 0, U^degree_X (mathbf(x), epsilon) union S eq.not emptyset. $
]

#env("Theorem")[
  For a convergent sequence ${ mathbf(x)_n: n in NN, forall i eq.not j, mathbf(x)_i eq.not mathbf(x)_j } subset.eq X$, the point $x = limits(lim)_(n -> infinity) mathbf(x)_n$ is a cluster point of $X$.
]

#env("Theorem", name: "Bolzano–Weierstrass Theorem")[
  For a metric sapce $X$ and a bounded infinite subset $S in X$, there exists at least one cluster point of $X$.
]

== Normed Space

#env("Definition", name: "Norm")[
  For a linear space $V$ over a field $FF$, the *norm* is a function $||dot.c||: V -> FF$ that satisfies

  + Positive definiteness: $forall mathbf(x) in V, ||mathbf(x)|| >= 0$, $||mathbf(x)|| = 0 <=> mathbf(x) = 0$;
  + Absolute homogeneity: $forall mathbf(x) in V, k in FF, ||k mathbf(x)|| = |k|""||mathbf(x)||$;
  + Triangle inequality: $forall mathbf(x), mathbf(y) in V, ||mathbf(x)|| + ||mathbf(y)|| >= ||mathbf(x) + mathbf(y)||$.
]

#env("Definition", name: "Normed space")[
  A *normed space* is a linear space $V$ over the the field $FF$ with a norm.
]

== Inner Product Space

#env("Definition", name: "Inner product")[
  For a linear space $V$ over a field $FF$, the *inner product* on $V$ is a function $angle.l dot.c, dot.c angle.r: V times V -> FF$ that satisfies

  + Positive definiteness: $forall mathbf(x) in V, angle.l mathbf(x), mathbf(x) angle.r >= 0$, $angle.l mathbf(x), mathbf(x) angle.r = 0 <=> mathbf(x) = 0$,
  + Conjugate symmetry: $angle.l mathbf(x), mathbf(y) angle.r = overline(angle.l mathbf(y)\, mathbf(x) angle.r)$,
  + Linearity in the first argument: $forall mathbf(x), mathbf(y), mathbf(z) in V, a, b in FF$, $angle.l a mathbf(x) + b mathbf(z), mathbf(y) angle.r = a angle.l mathbf(x), mathbf(y) angle.r + b angle.l mathbf(z), mathbf(y) angle.r$.
]

#env("Definition", name: "Inner product space")[
  An *inner product space* is a linear space $V$ over the field $FF$ with an inner product.
]

#env("Theorem")[
  Given a inner product space $V$ and the norm defined as $||mathbf(x)|| = sqrt(angle.l mathbf(x)\, mathbf(x) angle.r)$ satisfies

  $ forall mathbf(x), mathbf(y) in V, ||mathbf(x)+mathbf(y)||^2 + ||mathbf(x)-mathbf(y)||^2 = 2 ||mathbf(x)||^2 + 2 ||mathbf(y)||^2. $
]

=== Orthonormal system

#env("Definition")[
  A subset $W$ of an inner product space $V$ is called \textsf{orthonormal} if

  $ forall mathbf(u), mathbf(v) in S,angle.l mathbf(u), mathbf(v) angle.r = cases(0\, & #h(1em) u eq.not v, 1\, & #h(1em) u = v.) $
]

#env("Definition")[
  The *Gram-Schmidt process* takes in a finite or infinite independent list $(mathbf(u)_1, mathbf(u)_2, dots)$ and output two other lists $(mathbf(v)_1, mathbf(v)_2, dots)$ and $(mathbf(u)^*_1, mathbf(u)^*_2, dots)$ by

  $ mathbf(v)_(n+1)   & = mathbf(u)_(n+1) - sum_(i=1)^n angle.l mathbf(u)_(n+1), mathbf(u)^*_k angle.r mathbf(u)^*_k, \
    mathbf(u)^*_(n+1) & = mathbf(v)_(n+1)/(||mathbf(v)_(n+1)||), $

  with the recursion basis as $mathbf(v)_1 = mathbf(u)_1$.
]

#env("Definition")[
  Let $(mathbf(u)^*_1, mathbf(u)^*_2, dots)$ be a finite or infinite orthonormal list. The *orthogonal expansion* or *Fourier expansion* for an arbitrary $mathbf(w)$ is the series

  $ sum_(i=1)^n angle.l mathbf(w), mathbf(u)^*_i angle.r mathbf(u)^*_i, $

  where the constants $angle.l mathbf(w), mathbf(u)^*_i angle.r$ are known as the *Fourier coefficients* of $mathbf(w)$ and the term $angle.l mathbf(w), mathbf(u)^*_i angle.r mathbf(u)^*_i$ is the *projection* of $mathbf(w)$ on $mathbf(u)^*_i$.
]

#env("Theorem", name: "Minimum properties of Fourier expansions")[
  Let $mathbf(u)^*_1, mathbf(u)^*_2, dots$ be an orthonormal system and let $mathbf(w)$ be arbitrary. Then

  $ forall a_1, dots, a_n, ||mathbf(w) - sum_(i=1)^n angle.l mathbf(w), mathbf(u)^*_i angle.r mathbf(u)^*_i|| <= ||mathbf(w) - sum_(i=1)^n a_i mathbf(u)^*_i||, $

  where $||mathbf(w) - sum_(i=1)^n a_i mathbf(u)^*_i||$ is minimized only when $a_i = angle.l mathbf(w), mathbf(u)^*_i angle.r$.
]

#env("Theorem", name: "Bessel inequality")[
  Let $mathbf(u)^*_1, mathbf(u)^*_2, dots$ be an orthonormal system and let $mathbf(w)$ be arbitrary. Then

  $ sum_(i=1)^n abs(angle.l mathbf(w)\, mathbf(u)^*_i angle.r) <= ||mathbf(w)||^2. $
]

== Banach Space

#env("Definition", name: "Banach space")[
  A *Banach space* is a complete normed vector space.
]

== Hilbert Space

#env("Definition", name: "Hilbert space")[
  A *Hilbert space* is a inner product space that is also ce with respect to the distance function induced by the inner product.a complete metric space.
]

== Single Variable Polynomial

#env("Definition")[
  Denoted by $VV$ a linear space and $x$ the variable, a *(single variable) polynomial* over $VV$ is defined as

  $ p_n(x) = sum_(i=0)^n c_i x^i, $

  where $c_0, dots, c_n in VV$ are constants that called the *coefficients of the polynomial*.
]

#env("Definition")[
  Given a polynomial $p(x) = sum_(i=0)^n c_i x^i$ where $c_n eq.not 0$, the degree of $p(x)$ is marked as $upright(deg) (p(x)) = n$. In particular, the degree of zero polynomial $p(x) = 0$ is $upright(deg) (0) = -infinity$.
]

#env("Theorem")[
  Denoted by $PP_n = { p: upright(deg) (p) <= n }$ the set of polynomials with degree no more than $n$ ($n >= 0$), and $PP = union.big_(n=0)^infinity PP_n$ the set contains all polynomials, then $PP_n$ is a linear space and satisfies

  $ { 0 } = PP_0 subset PP_1 subset dots.c subset PP_n subset dots.c PP $
]

#env("Theorem", name: "Vieta's formulas")[
  Given a polynomial $p in PP_n$ with the coefficients being real or complex numbers, denoted by $x_1, dots, x_n$ the complex roots, then

  $ cases(x_1 + dots.c + x_n &= -c_(n-1)\,,
          limits(sum)_(i=1)^n limits(sum)_(j=i+1)^n x_i x_j &= c_(n-2)\,,
          & dots.c,
          limits(product)_(i=1)^n x_i &= (-1)^n c_0\,) $

  where $c_n = 1$ WLOG.
]

== Orthogonal Polynomial

#env("Definition")[
  Given a weight function $rho(x): [a, b] -> RR^+$, satisfies

  $ integral_a^b rho(x) upright(d) x > 0, integral_a^b x^k rho(x) upright(d) x > 0 " exists". $

  The set of *orthogonal polynomials* on $[a, b]$ with the weight function $rho(x)$ is defined as

  $ {p_i, i in NN} subset L_rho ([a, b]) = { f(x): integral_a^b f^2(x) rho(x) upright(d) x < infinity }. $

  where ${p_i, i in NN}$ are calculate from ${x^n, n in NN}$ using the Gram-Schmidt process with the inner product

  $ forall f, g in L_rho ([a, b]), angle.l f, g angle.r = integral_a^b rho(x) f(x) g(x) upright(d) x. $
]

#env("Theorem")[
  Orthogonal polynomials $p_(n-1) (x), p_n (x), p_(n+1) (x)$ satisfies

  $ p_(n+1) (x) = (a_n + b_n x) p_n (x) + c_n p_(n-1) (x). $

  where $a_n, b_n, c_n$ are depends on $[a, b]$ and $rho$.
]

#env("Theorem")[
  The orthogonal polynomial $p_n (x)$ on $[a, b]$ with the weight function $rho(x)$ has $n$ roots on $(a, b)$.
]

=== Legendre polynomial

#env("Definition")[
  The *Legendre polynomial* is defined on $[-1, 1]$ with the weight function $rho(x) = 1$.
]

#env("Theorem")[
  The Legendre polynomials ${p_i (x), i in NN }$ satisfies

  $ integral_(-1)^1 p_i (x) p_j (x) upright(d) x = cases(2 / (2 i + 1)\, & #h(1em) i = j, 0\, & #h(1em) i eq.not j. ) $
]

#env("Theorem")[
  The Legendre polynomial $p_(n-1), p_n, p_(n+1)$ satisfies

  $ p_(n+1) (x) = (2 n + 1) / (n + 1) x p_n (x) - n / (n + 1) p_(n-1) (x). $
]

#env("Example")[
  The first three terms of Legendre polynomials is

  $ p_0(x) = 1, #h(1em) p_1(x) = x, #h(1em) p_2(x) = 3/2 x^2 - 1/2. $
]

=== Chebyshev polynomial of the first kind

#env("Definition")[
  The *Chebyshev polynomial of the first kind* is defined on $[-1, 1]$ with the weight function $rho(x) = 1 / sqrt(1 - x^2)$.
]

#env("Theorem")[
  The Chebyshev polynomials of the first kind ${p_i (x), i in NN}$ satisfies

  $ integral_(-1)^1 1/sqrt(1 - x^2) p_i (x) p_j (x) upright(d) x = cases(
    pi & #h(1em) i = j = 0,
    pi / 2 & #h(1em) i = j eq.not 0,
    0 & #h(1em) i eq.not j.) $
]

#env("Theorem")[
  The Chebyshev polynomial of the first kind $p_(n-1), p_n, p_(n+1)$ satisfies

  $ p_(n+1) (x) = 2 x p_n (x) - p_(n-1) (x). $
]

#env("Example")[
  The first three terms of Chebyshev polynomials of the first kind is

  $ p_0 (x) = 1, #h(1em) p_1 (x) = x, #h(1em) p_2 (x) = 2 x^2 - 1. $
]

=== Chebyshev polynomial of the second kind

#env("Definition")[
  The *Chebyshev polynomial of the second kind* is defined on $[-1, 1]$ with the weight function $rho(x) = sqrt(1 - x^2)$.
]

#env("Theorem")[
  The Chebyshev polynomials of the second kind ${p_i (x), i in NN}$ satisfies

  $ integral_(-1)^1 sqrt(1 - x^2) p_i (x) p_j (x) upright(d) x = cases(
    pi / 2\, & #h(1em) i = j,
    0\, & #h(1em) i eq.not j.) $
]

#env("Theorem")[
  The Chebyshev polynomial of the second kind $p_(n-1), p_n, p_(n+1)$ satisfies

  $ p_(n+1) (x) = 2 x p_n (x) - p_(n-1) (x). $
]

#env("Example")[
  The first three terms of Chebyshev polynomials of the second kind is

  $ p_0 (x) = 1, #h(1em) p_1 (x) = 2x, #h(1em) p_2 (x) = 4 x^2 - 1. $
]

=== Laguerre polynomial

#env("Definition")[
  The *Laguerre polynomial* is defined on $[0, +infinity)$ with the weight function $rho(x) = x^alpha e^(-x)$.
]

#env("Theorem")[
  The Laguerre polynomial ${p_i (x), i in NN}$ satisfies

  $ integral_0^(+infinity) x^alpha e^(-x) p_i (x) p_j (x) upright(d) x = cases(
    Gamma(n+alpha+1) / (n!)\, & #h(1em) i = j,
    0\, & #h(1em) i eq.not j.) $
]

#env("Theorem")[
  For $alpha = 0$, the Laguerre polynomial $p_(n-1), p_n, p_(n+1)$ satisfies

  $ p_(n+1) (x) = (2 n + 1 - x) p_n (x) - n^2 p_(n-1) (x). $
]

#env("Example")[
  For $alpha = 0$, the first three terms of Laguerre polynomial is

  $ p_0 (x) = 1, #h(1em) p_1 (x) = -x + 1, #h(1em) p_2 (x) = x^2 - 4x + 2. $
]

=== Hermite polynomial (probability theory form)

#env("Definition")[
  The *Hermite polynomial* is defined on $(-infinity, +infinity)$ with the weight function $rho(x) = (1 / sqrt(2 pi)) e^(-(x^2) / 2)$.
]

#env("Theorem")[
  The Hermite polynomial ${p_i (x), i in NN}$ satisfies

  $ integral_0^(+infinity) 1/ sqrt(2 pi) e^(-(x^2) / 2) p_i (x) p_j (x) upright(d) x = cases(
    n!\, & #h(1em) i = j,
    0\, & #h(1em) i eq.not j.) $
]

#env("Theorem")[
  For $alpha = 0$, the Hermite polynomial $p_(n-1), p_n, p_(n+1)$ satisfies

  $ p_(n+1) (x) = x p_n (x) - n p_(n-1) (x). $
]

#env("Example")[
  For $alpha = 0$, the first three terms of Hermite polynomial is

  $ p_0 (x) = 1, #h(1em) p_1 (x) = x, #h(1em) p_2 (x) = x^2 - 1. $
]
