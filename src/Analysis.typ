#import "../book.typ": env, mathbf

= Analysis

== Calculus

=== Mean value theorem

#env("Theorem", name: "Rolle's theorem")[
  Given $n gt.eq 2$ and $f in C^(n-1)([a, b])$ with $f^((n))(x)$ exists at each point of $(a, b)$, suppose that $f(x_0) = dots.c f(x_n) = 0$ for $a lt.eq x_0 < dots.c < x_n lt.eq b$, then there is a point $xi in (a, b)$ such that $f^((n))(xi) = 0$.
]

#env("Theorem", name: "Lagrange's mean value theorem")[
  Given $f in C^1([a, b])$, then there exists $xi in (a, b)$ such that

  $ f^prime (xi) = (f(b) - f(a)) / (b-a). $
]

#env("Theorem", name: "Cauchy's mean value theorem")[
  Given $f, g in C^1([a, b])$, then there exists $xi in (a, b)$ such that

  $ (f(b) - f(a)) g^prime (xi) = (g(b) - g(a)) f^prime (xi). $

  If $g(a) eq.not g(b)$ and $g(xi) eq.not 0$, this is equivalent to

  $ (f^prime (xi)) / (g^prime (xi)) = (f(b) - f(a)) / (g(b) - g(a)). $
]

#env("Theorem", name: "First mean value theorems for definite integrals")[
  Given $f in C([a, b])$ and $g$ integrable and does not change sign on $[a, b]$, then there exists $xi$ in $(a, b)$ such that

  $ integral_a^b f(x) g(x) upright(d) x = f(xi) integral_a^b g(x) upright(d) x. $
]

#env("Theorem", name: "Second mean value theorems for definite integrals")[
  Given $f$ a integrable function and $g$ a positive monotonically decreasing function, then there exists $xi$ in $(a, b)$ such that

  $ integral_a^b f(x) g(x) upright(d) x = g(a) integral_a^xi f(x) upright(d) x. $

  If $g$ is a positive monotonically increasing function, then there exists $xi$ in $(a, b)$ such that

  $ integral_a^b f(x) g(x) upright(d) x = g(b) integral_xi^b f(x) upright(d) x. $

  If $g$ is a monotonically function, then there exists $xi$ in $(a, b)$ such that

  $ integral_a^b f(x) g(x) upright(d) x = g(a) integral_a^xi f(x) upright(d) x + g(b) integral_xi^b f(x) upright(d) x. $
]

=== Series

#env("Definition")[
  A series $sum_(n=1)^infinity a_n$ is *absolute convergent* if the series of absolute values $sum_(n=1)^infinity |a_n|$ converges.
]

#env("Theorem")[
  If a series is absolute convergent, then any reordering of it converges to the same limit.
]

#env("Theorem", name: "n-th term test")[
  If $limits(lim)_(n -> infinity) a_n eq.not 0$, then the series divergent.
]

#env("Theorem", name: "Direct comparison test")[
  If $sum_(n=1)^infinity b_n$ is convergent and exists $N > 0$, for all $n > N$, $0 lt.eq a_n lt.eq b_n$, then $sum_(n=1)^infinity a_n$ is convergent; if $sum_(n=1)^infinity b_n$ is divergent and exists $N > 0$, for all $n > N$, $0 lt.eq b_n lt.eq a_n$, then $sum_(n=1)^infinity a_n$ is divergent.
]

#env("Theorem", name: "Limit comparison test")[
  Given two series $sum_(n=1)^infinity a_n$ and $sum_(n=1)^infinity b_n$ with $a_n gt.eq 0, b_n > 0$. Then if $limits(lim)_(n -> infinity) a_n / b_n = c in (0, infinity)$, then either both series converge or both series diverge.
]

#env("Theorem", name: "Ratio test")[
  Given $sum_(n=1)^infinity a_n$ and

  $ R = limsup_(n -> infinity) abs(a_(n+1) / a_n), r = liminf_(n -> infinity) abs(a_(n+1) / a_n), $

  if $R < 1$, then the series converges absolutely; if $r > 1$, then the series diverges.
]

#env("Theorem", name: "Root test")[
  Given $sum_(n=1)^infinity a_n$ and

  $ R = limsup_(n -> infinity) (|a_n|)^(1/n), $

  if $R < 1$, then the series converges absolutely; if $R > 1$, then the series diverges.
]

#env("Theorem", name: "Integral test")[
  Given $sum_(n=1)^infinity f(n)$ where $f$ is monotone decreasing, then the series converges iff the improper integral

  $ integral_1^infinity f(x) upright(d) x $

  is finite. In particular,

  $ integral_1^infinity f(x) upright(d) x lt.eq sum_(n=1)^infinity f(n) lt.eq f(1) + integral_1^infinity f(x) upright(d) x $
]

#env("Theorem", name: "Alternating series test")[
  Given $sum_(n=1)^infinity (-1)^n a_n$ where $a_n$ are all positive or negative, then the series converges if $|a_n|$ decreases monotonically and $limits(lim)_(n -> infinity) a_n = 0$.
]

=== Multivariable calculus

#env("Theorem", name: "Green's theorem")[
  Let $Omega$ be the region in a plane with $partial Omega$ a positively oriented, piecewise smooth, simple closed curve. If $P$ and $Q$ are functions of $(x, y)$ defined on an open region containing $Omega$ and have continuous partial derivatives there, then

  $ integral.cont_(partial Omega) (P upright(d) x + Q upright(d) y) = integral.double_Omega ((partial Q) / (partial x) - (partial P) / (partial y)) upright(d) x upright(d) y $

  where the path of integration along $C$ is anticlockwise.
]

#env("Theorem", name: "Stokes' theorem")[
  Let $Omega$ be a smooth oriented surface in $RR^3$ with $partial Omega$ a piecewise smooth, simple closed curve. If $mathbf(F) (x,y,z) = (F_x (x,y,z), F_y (x,y,z), F_z (x,y,z))$ is defined and has continuous first order partial derivatives in a region containing $Omega$, then

  $ integral.double_Omega (nabla times mathbf(F)) dot.c upright(d) S(x) = integral.cont_(partial Omega) mathbf(F) dot.c upright(d) x $
]

#env("Theorem", name: "Gauss-Green theorem (Divergence theorem)")[
  For a bounded open set $Omega in RR^n$ that $partial Omega in C^1$ and a function $mathbf(F)(mathbf(x)) = (F_1 (mathbf(x)), dots, F_n (mathbf(x))): overline(Omega)-> RR^n$ satisfies $mathbf(F)(mathbf(x)) in C^1(Omega) sect C(overline(Omega))$,

  $ integral_Omega "div" mathbf(F)(mathbf(x)) upright(d) mathbf(x) = integral_(partial Omega) mathbf(F)(mathbf(x)) dot mathbf(n) upright(d) S(x), $

  where $mathbf(n)$ is outward pointing unit normal vector at $partial Omega$.
]

#env("Definition")[
  An *implicit function* is a function of the form

  $ F(x_1, dots, x_n) = 0, $

  where $x_1, dots, x_n$ are variables.
]

#env("Theorem")[
  Let $F(mathbf(x), mathbf(y)): RR^(n+m) -> RR^m$ be a differentiable function of two variables, and $(mathbf(x)_0, mathbf(y)_0)$ the point that $F(mathbf(x)_0, mathbf(y)_0) = mathbf(0)$. If the Jacobian matrix

  $ J_(F, mathbf(y)) (mathbf(x)_0, mathbf(y)_0) = ((partial F_i) / (partial y_j) (mathbf(x)_0, mathbf(y)_0)) $

  is invertible, then there exists an open set $Omega subset.eq RR^n$ containing $mathbf(x)_0$ such that there exists a unique function $f: Omega -> RR^m$ such that $f(mathbf(x)_0) = mathbf(y)_0$ and $F(mathbf(x), f(mathbf(y))) = mathbf(0)$ for all $mathbf(x) in Omega$.

  Moreover, $f$ is continuously differentiable and, denoting the left-hand panel of the Jacobian matrix shown in the previous section as

  $ J_(F, mathbf(x)) (mathbf(x)_0, mathbf(y)_0) = ((partial F_i) / (partial x_j) (mathbf(x)_0, mathbf(y)_0)), $

  the Jacobian matrix of partial derivatives of $f$ in $Omega$ is given by

  $ ((partial f_i) / (partial x_j) (mathbf(x)))_(m times n) = -(J_(F, mathbf(y)) (mathbf(x), f(mathbf(x))))_(m times m)^(-1) (J_(F, mathbf(x)) (mathbf(x), f(mathbf(x))))_(m times n) . $
]

== Real Analysis

=== Lebesgue Measure

#env("Definition")[
  Given an bounded interval $I$, denoted by $cal(l)(I)$ the *length* of the interval defined as the distance of its endpoints,

  $ cal(l)([a, b]) = cal(l)((a, b)) = b - a. $
]

#env("Definition")[
  For any subset $E subset RR$, the *Lebesgue outer measure* $m^*(E)$ is defined as

  $ m^*(E) = inf { sum_(i=1)^n cal(l)(I_i): {I_i}_(i=1)^n " is a sequence of open intervals that " E subset union.big_(i=1)^n I_i }. $
]

#env("Theorem")[
  - If $E_1 subset E_2$, then $m^*(E_1) lt.eq m^*(E_2)$;
  - Given an interval $I$, $m^*(I) = cal(l)(I)$;
  - Given ${E_i subset RR}_(i=1)^n$, $m^*(union.big_(i=1)^n E_i) lt.eq sum_(i=1)^n m^*(E_i)$.
]

== Important Inequalities

=== Fundamental inequality

#env("Theorem", name: "Fundamental inequality")[
  $ forall x, y in RR^+, 2 / (1/a + 1/b) <= sqrt(a b) <= (a+b)/2 <= sqrt((a^2 + b^2) / 2), " equality holds iff " a = b. $
]

=== Triangle inequality

#env("Theorem", name: "Triangle inequality")[
  $ & a, b in CC, & & bar.v|a| - |b|bar.v <= |a plus.minus b| <= |a| + |b|, \
    & mathbf(a), mathbf(b) in RR^n, & & bar.v||mathbf(a)|| - ||mathbf(b)||bar.v <= ||mathbf(a) plus.minus mathbf(b)|| <= ||mathbf(a)|| + ||mathbf(b)||. $
]

=== Bernoulli inequality

#env("Theorem", name: "Bernoulli inequality")[
  $ & forall x in (-1, +infinity), forall a in [1, +infinity), &  & (1 + x)^a >= 1 + a x, \
    & forall x in (-1, +infinity), forall a in (0, 1), &  & (1 + x)^a <= 1 + a x, \
    & forall x in (-1, +infinity), forall a in (-1, 0), &  & (1 + x)^a >= 1 + a x, \
    & forall x_i in RR, i in \{1, dots, n\}, &  & product_(i=1)^n (1 + x_i) >= 1 + sum_(i=1)^n x_i, \
    & forall y >= x > 0, &  & (1 + x)^y >= (1 + y)^x. $
]

=== Jensen's inequality

#env("Theorem", name: "Jensen's inequality")[
  For a real convex function $f(x): [a, b] -> RR$, numbers $x_1 dots, x_n in [a, b]$ and weights $a_1, dots, a_n$, the Jensen's inequality can be start as

  $ (sum_(i=1)^n a_i f(x_i)) / (sum_(i=1)^n a_i) >= f ( (sum_(i=1)^n a_i x_i) / (sum_(i=1)^n a_i) ). $

  And for concave function $f$,

  $ (sum_(i=1)^n a_i f(x_i)) / (sum_(i=1)^n a_i) <= f ( (sum_(i=1)^n a_i x_i) / (sum_(i=1)^n a_i) ). $

  Equality holds iff $x_1 = dots.c = x_n$ or $f$ is linear on $[a, b]$.
]

=== Cauchy–Schwarz inequality

#env("Theorem", name: "Cauchy–Schwarz inequality")[
  \ *Discrete form.* For real numbers $a_1, dots a_n, b_1, dots b_n in RR, n >= 2$

  $ sum_(i=1)^n a_i^2 sum_(i=1)^n b_i^2 >= ( sum_(i=1)^n a_i b_i ). $

  Equality holds iff $a_1 / b_1 = dots.c = a_n / b_n$ or $a_i = 0$ or $b_i = 0$.

  \ *Inner product form.* For a inner product space $V$ with a norm induced by the inner product,

  $ forall mathbf(a), mathbf(b) in V ||mathbf(a)|| dot.c ||mathbf(b)|| >= |angle.l mathbf(a), mathbf(b) angle.r|. $

  Equality holds iff $exists k in RR, " s.t. " k mathbf(a) = mathbf(b) " or " mathbf(a) = k mathbf(b)$.

  \ *Probability form.* For random variables $X$ and $Y$,

  $ sqrt(E(X^2)) dot.c sqrt(E(Y^2)) >= |E(X Y)|. $

  Equality holds iff $exists k in RR, " s.t. " k X = Y " or " X = k Y$.

  \ *Integral form.* For integrable functions $f, g in L^2(Omega)$,

  $ (integral_Omega f^2(x) upright(d) x) (integral_Omega g^2(x) upright(d) x) >= ( integral_Omega f(x) g(x) upright(d) x )^2. $

  Equality holds iff $exists k in RR, " s.t. " k f(x) = g(x) " or " f(x) = k g(x)$.
]

=== Hölder's inequality

#env("Theorem", name: "Hölder's inequality")[
  \ *Discrete form.*  For real numbers $a_1, dots a_n, b_1, dots b_n in RR, n >= 2$ and $p, q in [1, +infinity)$ that $(1/p) + (1/q) = 1$,

  $ ( sum_(i=1)^n a_i^p )^(1/p) ( sum_(i=1)^n b_i^q )^(1/q) >= ( sum_(i=1)^n a_i b_i ). $

  Equality holds iff $exists c_1, c_2 in RR, c_1^2 + c_2^2 eq.not 0, " s.t. " c_1 a_i^p = c_2 b_i^q$.

  \ *Integral form.* For functions $f in L^p (Omega), g in L^q (Omega)$ and $p, q in [1, +infinity)$ that $1/p + 1/q = 1$,

  $ ( integral_Omega |f(x)|^p upright(d) x )^(1/p) ( integral_Omega |g(x)|^q upright(d) x )^(1/q) >= integral_Omega f(x) g(x) upright(d) x. $
]

=== Young's inequality

#env("Theorem", name: "Young's inequality")[
  For $p, q in [1, +infinity)$ that $1/p + 1/q = 1$,

  $ forall a, b in RR^*, a^p / p + b^q / q >= a b. $

  Equality holds iff $a^p = b^q$.
]

=== Minkowski inequality

#env("Theorem", name: "Minkowski inequality")[
  For a metric space $S$,

  $ forall f, g in L^p (S), p in [1, +infinity], ||f||_p + ||g||_p >= ||f + g||_p. $

  For $p in (1, +infinity)$, equality holds iff $exists k >= 0, " s.t. " f = k g$ or $k f = g$.
]


== Special Functions

=== Gaussian function

#env("Definition")[
  A *Gaussian function*, or a Gaussian, is a function of the form

  $ f(x) = a exp(-((x - b)^2) / (2 c^2)), $

  where $a in RR^+$ is the height of the curve's peak, $b in RR$ is the position of the center of the peak and $c in RR^+$ is the standard deviation or the Gaussian root mean square width.
]

#env("Theorem")[
  The integral of a Gaussian is

  $ integral_(-infinity)^(+infinity) a exp(-((x - b)^2)/ (2 c^2)) upright("d") x = a c sqrt(2 pi). $
]

#env("Definition")[
  A *normal distribution* or a *Gaussian distribution* is a continuous probability distribution of the form

  $ f_(mu, sigma) (x) = 1 / (sigma sqrt(2 pi)) exp(-((x - mu)^2)(2 sigma^2)), $

  where $mu$ is the mean and $sigma$ is the standard deviation.
]

=== Dirac delta function

#env("Definition")[
  The *Dirac delta function* centered at $overline(x)$ is

  $ delta(x - overline(x)) = lim_(epsilon -> 0) f_(overline(x), epsilon) (x - overline(x)), $

  where $f_(overline(x), epsilon)$ is a normal distribution with its mean at $overline(x)$ and its standard deviation as $epsilon$.
]

#env("Theorem")[
  The Dirac delta function satisfies

  $ delta(x - overline(x)) =& cases(+infinity\, & #h(1em) x = overline(x), 0\, & #h(1em) x eq.not overline(x),) #h(1em) integral_(-infinity)^x delta(x - overline(x)) upright("d") x =& cases(1\, & #h(1em) x >= 0, 0\, & #h(1em) x < 0) $

  where $H(x) = integral_(-infinity)^x delta(x - overline(x)) upright("d") x$ is called *Heaviside function* or *step function*.
]

#env("Theorem")[
  If $f: RR -> RR$ is continuous, then

  $ integral_(-infinity)^(+infinity) delta(x - overline(x)) f(x) upright("d") x = f(overline(x)). $
]

=== Gamma function

#env("Definition")[
  The *Gamma function* defined on $CC$ is

  $ Gamma(z) = integral_0^(+infinity) t^(z-1) e^(-t) upright("d") t, $

  where $upright("Re") (z) > 0$.
]

#env("Theorem")[
  The Gamma function satisfies

  $ & forall x in CC, & & Gamma(x + 1) = x Gamma(x), \ & forall n in NN^*, & & Gamma(n) = (n - 1)!. $
]


#env("Theorem")[
  The Gamma function satisfies

  $ forall x in (0, 1), Gamma(1 - x) Gamma(x) = pi / sin(pi x), $

  which implies

  $ Gamma(1/2) = sqrt(pi). $
]

=== Beta Function

#env("Definition")[
  For $p, q in RR^+$, the *Beta function* is defined as

  $ B(p, q) = integral_0^1 x^(p-1) (1 - x)^(q-1) upright("d") x. $
]

#env("Theorem")[
  The Beta function satisfies

  $ forall p, q in RR^+, B(p, q) = B(q, p) = (Gamma(p) Gamma(q)) / Gamma(p + q). $
]

#env("Theorem")[
  The Beta function satisfies

  $ & forall p > 0, forall q > 1, & & B(p, q) = (q - 1) / (p + q - 1) B(p, q - 1), \
    & forall p > 1, forall q > 0, & & B(p, q) = (p - 1) / (p + q - 1) B(p - 1, q), \
    & forall p > 1, forall q > 1, & & B(p, q) = ((p - 1)(q - 1)) / ((p + q - 1)(p + q - 2)) B(p - 1, q - 1). $
]
