#import "@local/math:1.0.0": *

= Probability Theory

== Probability

#env("Definition")[
  A *probability space* is a triple $(Omega, cal(F), P)$ consisting of

  - the sample space $Omega$: an arbitrary non-empty set;
  - the $sigma$-algebra $cal(F) subset.eq 2^Omega$: a set of subsets of $Omega$, called events, such that
    - $cal(F)$ contains the sample space: $Omega in cal(F)$;
    - $cal(F)$ is closed under complements: if $A in cal(F)$, then also $(Omega backslash A) in cal(F)$;
    - $cal(F)$ is closed under countable unions: if $A_i in cal(F), i = 1, dots$, then also $(union_(i=1)^infinity A_i) in cal(F)$;
  - the probability measure $P: cal(F) -> [0, 1]$: a function such that
    - $P$ is countably additive (also called $sigma$-additive): if ${A_i}_(i=1)^infinity subset.eq cal(F)$ is a countable collection of pairwise disjoint sets, then $P(union_(i=1)^infinity A_i) = sum_(i=1)^infinity P(A_i)$;
    - the measure of the entire sample space is equal to one: $P(Omega) = 1$.
]

#env("Definition")[
  Given a probability space $(Omega, cal(F), P)$, a *random variable* is a measurable function $X: Omega -> RR$ that for all $t in RR$,

  $ {omega in Omega: X(omega) lt.eq t} in cal(F). $
]

#env("Definition")[
  The *cumulative distribution function (cdf)* of a random variable $X$ on probability space $(Omega, cal(F), P)$ is

  $ F_X (x) = P(X lt.eq x). $
]

=== Continuous random variables

#env("Definition")[
  A *continuous random variables* is a random variables with the range of $X$ is uncountable.
]

#env("Definition")[
  The *probability density function (pdf)* of a continuous random variables is

  $ f(x) = (upright(d) F(x))/(upright(d) x). $
]

#env("Theorem")[
  Let $X$ be a discrete random variables, its probability mass function satisfies

  + $f(x) gt.eq 0$;
  + $integral_(-infinity)^(+infinity) f(x) upright(d) x = 1$;
  + $F(x) = integral_(-infinity)^(x) f(t) upright(d) t$.
]

#env("Theorem")[
  Let $X$ be a continuous random variables and $Y = g(X)$ is a differentiable bijection, denoted by $f_X (x), f_Y (y)$ the pdf's of $X$ and $Y$, then

  $ f_Y (y) = f_X (g^(-1)(y)) abs((upright(d) x)/(upright(d) y)). $
]

=== Discrete random variables

#env("Definition")[
  A *discrete random variables* is a random variables with the range of $X$ is countable.
]

#env("Definition")[
  The *probability mass function (pmf)* of a discrete random variables is

  $ p_X(x) = P(X = x). $
]

#env("Theorem")[
  Let $X$ be a discrete random variables, its probability mass function satisfies

  $ 0 lt.eq p_X (x) lt.eq 1 "and" sum_(x in "Range"(X)) p_X (x) = 1. $
]

#env("Theorem")[
  Let $X$ be a discrete random variables and $Y = g(X)$, denoted by $p_X (x), p_Y (y)$ the pmf's of $X$ and $Y$, then

  $ p_Y (y) = sum_(x; g(x) = y) p_X (x). $

  In particular, if $g$ is a bijection, then

  $ p_Y (y) = p_X (g^(-1)(y)). $
]

#env("Remark")[
  The discrete random variable $X$ can be written in continuous form via Dirac delta function, i.e.

  $ f_X (x) = sum_(overline(x) in "Range"(X)) p_X (x) delta(x - overline(x)). $
]

=== Distributional quantities

#env("Definition")[
  Given a random variable $X$, the *expectation* of $X$ is

  $ & E(X) = sum_(x in "Range"(X)) x p(x), && #h(1em) "if" sum_(x in "Range"(X)) abs(x) p(x) lt infinity & #h(1em) ("discrete case"), \
  & E(X) = integral_(-infinity)^(+infinity) x f(x) upright(d) x, && #h(1em) "if" integral_(-infinity)^(+infinity) abs(x) f(x) upright(d) x lt infinity & #h(1em) ("continuous case"). $
]

#env("Definition")[
  Given a random variable $X$, the *$k$-th moment* of $X$ is $E(X^k)$, and the *$k$-th central moment* is $E((X - E(X))^k)$.
]

#env("Example")[
  The *variance* of random variable $X$ is the *$2$-nd central moment* of $X$,

  $ sigma^2 = "Var"(X) = E((X - E(X))^2) = E(X^2) - E(X)^2. $
]

#env("Definition")[
  Given a random variable $X$, if $E(e^(t X))$ exists for $t in RR$, then the *moment generating function (mgf)* of $X$ is

  $ M_X (t) = E(e^(t X)) = sum_(k=0)^infinity (t^k E(X^k))/(k!). $
]

#env("Theorem")[
  The moment generating function (mgf) of random variables $X$ and $Y$ satisfies

  + For all $k in NN^*$, $M^((k)) (0) = E(X^k)$;
  + If $X$ and $Y$ are independent, then $M_(X+Y) (t) = M_X (t) M_Y (t)$.
]

== Characteristic functions

== Probability limit theorems

== Common distributions


