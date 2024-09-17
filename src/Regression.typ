#import "@local/math:1.0.0": *

= Regression

== Linear Regression

#env("Definition")[
  Given a data set ${(mathbf(x)_i, y_i), i in {1, dots, m}}$ where $mathbf(x)_i in RR^n$, the linear regression seeks $tilde(mathbf(w)) in RR^n$ and $tilde(b) in RR$ such that

  $ f(mathbf(x)_i) = tilde(mathbf(w))^T mathbf(x)_i + tilde(b) approx y_i. $

  In general, we choose mean square error to estimate the error between $f(mathbf(x)_i)$ and $y_i$, which implies

  $ (tilde(mathbf(w)), tilde(b)) = limits(arg min)_(mathbf(w) in RR^n, b in RR) sum_(i=1)^m (f(mathbf(x)_i) - y_i)^2 = limits(arg min)_(mathbf(w) in RR^n, b in RR) sum_(i=1)^m (mathbf(w)^T x + b - y_i)^2. $
]

#env("Theorem")[
  Given a data set ${(mathbf(x)_i, y_i), i in {1, dots, m}}$ where $mathbf(x)_i in RR^n$, let

  $ X = mat(mathbf(x)_1^T, 1; dots.v, 1; mathbf(x)_m^T, 1; ), mathbf(y) = mat(y_1; dots.v; y_m), $

  if $X^T X$ is invertible, the solution of linear regression can be written as

  $ mat(mathbf(w); b) = (X^T X)^(-1) X^T mathbf(y). $
]