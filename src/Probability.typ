#import "@local/book:1.0.0": env, mathbf

= Probability Theory

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

== Characteristic functions

== Probability limit theorems
