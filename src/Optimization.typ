#import "@local/math:1.0.0": *

= Optimization

== Optimality Conditions

#env("Definition")[
  Let $f: RR^n -> RR$, $mathbf(x)^*$ is a *global minimizer* of $f$ if $forall mathbf(x) in RR^n, f(mathbf(x)) gt.eq f(mathbf(x)^*)$.

  Let $f: RR^n -> RR$, $mathbf(x)^*$ is a *local minimizer* of $f$ if $exists delta gt 0, forall mathbf(x) in U(mathbf(x), delta), f(mathbf(x)) gt.eq f(mathbf(x)^*)$.
]

#env("Theorem", name: "1st-order necessary conditions")[
  Let $f in C^1(RR^n)$ and $mathbf(x)^*$ be a local minimizer of $f$, then $gradient f(mathbf(x)^*) = 0$.
]

#env("Definition")[
  Let $f in C^1(RR^n)$ then $mathbf(x)^*$ is called a *stationary point* of $f$ if $gradient f(mathbf(x)^*) = 0$.
]

#env("Theorem", name: "2nd-order necessary conditions")[
  Let $f in C^2(RR^n)$.

  - If $mathbf(x)^*$ is a local minimizer of $f$, then $gradient^2 f(mathbf(x)^*) succ.eq 0$;

  - If $mathbf(x)^*$ is a stationary point of $f$ and $gradient^2 f(mathbf(x)^*) succ 0$, then $mathbf(x)^*$ is a local minimizer.
]

#env("Definition")[
  Let $f in C^1(RR^n)$ and $mathbf(x) in RR^n$. A $mathbf(d) in RR^n$ is called a *descent direction* at $x$ if

  $ (gradient f(mathbf(x)))^T mathbf(d) lt 0. $

  Specifically, $-gradient f(x)$ is called the *steepest descent direction*.
]

#env("Remark")[
  Let $D in RR^(n times n)$ and $D succ 0$, then $d = - D gradient f(x)$ is a descent direction.
]

=== KKT Conditions

#env("Definition")[
  We say that $x^*$ is a local minimizer of

  $ min_(x in RR^n) & f (x)\
    " s.t. " & h_j (x) = 0, j = 1, dots, p,\
             & g_i (x) lt.eq 0, i = 1, dots, m.\
  $

  if $x^*$ is feasible and exists $epsilon > 0$ such that $f (x) gt.eq f (x^*)$ whenever $x$ is feasible and $norm(x - x^*)_2 lt.eq epsilon$.
]

#env("Theorem", name: "Karush-Kuhn-Tucker conditions for the LP, KKT condition")[
  Consider the linear program

  $ min_(x in RR^n) & c^T x \
    " s.t. " & B x = d, \
             & A x lt.eq b.
  $

  where $c in RR^n$, $B in RR^(p times n)$ and $A in RR^(q times n)$. Then $x^* in RR^n$ is an optimal solution iff there exists $lambda^* in RR^q$ and $mu^* in RR^p$ such that the following conditions holds:

  - (Primal feasibility) $B x^* = d$ and $A x lt.eq b$;
  - (Dual feasibility) $B^T mu^* + A^T lambda^* + c = 0$ and $lambda^* gt.eq 0$;
  - (Complementary slackness) $lambda^*^T (A x^* - b) = 0$.
]

#env("Theorem", name: "Mangasarian-Fromovitz constraint qualification")[
  Consider the feasible set of

  $ min_(x in RR^n) & f (x)\
    " s.t. " & h_j (x) = 0, j = 1, dots, p,\
             & g_i (x) lt.eq 0, i = 1, dots, m.\
  $

  and let $x^*$ be feasible. We say that the *Mangasarian-Fromovitz constraint qualification (MFCQ)* holds at $x^*$ if the following conditions holds:

  - If $sum_(j in J) mu_j gradient h_j (x^*) + sum_(i in I (x^*)) lambda_i gradient g_i (x^*) = 0$ and $forall i in I (x^*), lambda_i gt.eq 0$ \ then $lambda_i = 0$ for all $i in I (x^*)$ and $mu_j = 0$ for all $j in J$.
]

#env("Theorem", name: "KKT conditions for NLP")[
  Consider

  $ min_(x in RR^n) & f (x)\
    " s.t. " & h_j (x) = 0, j = 1, dots, p,\
             & g_i (x) lt.eq 0, i = 1, dots, m.\
  $

  and let $x^*$ be a local minimizer. Suppose that MFCQ holds at $x^*$. Then there exists $lambda^* in RR^m$ and $mu^* in RR^p$ such that

  - $gradient f (x^*) + sum_(j in J) mu_j^* gradient h_j (x^*) + sum_(i in I (x^*)) lambda_i^* gradient g_i (x^*) = 0$ and $forall i in I, lambda_i^* gt.eq 0, lambda_i^* g_i (x^*) = 0$.
]

#env("Definition")[
  Consider

  $ min_(x in RR^n) & f (x)\
    " s.t. " & h_j (x) = 0, j = 1, dots, p,\
             & g_i (x) lt.eq 0, i = 1, dots, m.\
  $

  An $overline(x)$ is called a stationary point if it is feasible and there exist $overline(lambda) in RR^m$ and $overline(mu) in RR^p$ such that

  - $gradient f (overline(x)) + sum_(j in J) overline(mu_j) gradient h_j (overline(x)) + sum_(i in I (overline(x))) overline(lambda_i) gradient g_i (overline(x)) = 0$ and $forall i in I, overline(lambda_i) gt.eq 0, overline(lambda_i) g_i (overline(x)) = 0$.
]

#env("Theorem", name: "MFCQ from Slater")[
  Consider the set defined by

  $ S = {x in RR^n: forall i in I, g_i (x) lt.eq 0 }, $

  where $g_i$ are convex $C^1$. Suppose that there exist $overline(x)$ satisfying

  $ forall i in I, g_i (overline(x)) lt 0. $

  Then MFCQ holds at every point in $S$.
]

#env("Theorem", name: "MFCQ from generalized Slater")[
  Consider the set defined by

  $ S = {x in RR^n: forall i in I, g_i (x) lt.eq 0, A x = b }, $

  where $g_i$ are convex $C^1$ and $A in RR^(p times n)$. Suppose that there exist $overline(x)$ satisfying

  $ forall i in I, g_i (overline(x)) lt 0, A overline(x) = b, $

  and $A$ has full row rank. Then MFCQ holds at every point in $S$.
]

#env("Theorem", name: "Sufficiency under convexity")[
  Consider

  $ & min_(x in RR^n) & & f (x)\
    & " s.t. " & & A x = b,\
    &          & & g_i (x) lt.eq 0, i in I,\
    & "where" & & f "and" g_i "are convex" C^1, A in RR^(p times n).
  $

  Suppose that there exist $x^* in RR^n$, $lambda^* in RR^m$ and $mu^* in RR^p$ such that

  - $forall i in I, g_i (x^*) lt.eq 0, A x^* = b$;
  - $gradient f(x^*) + sum_(i in I) lambda_i^* gradient g_i (x^*) + A^T mu^* = 0$;
  - $forall i in I, lambda_i^* gt.eq 0, lambda_i^* g_i (x^*) = 0$.

  Then $x^*$ is a global minimizer.
]

== One-dimensional Line Search

=== Inexact line search

#env("Definition", name: "Armijo rule")[
  Let $sigma in (0, 1)$, $mathbf(x) in RR^n$ and $mathbf(d) in RR^n$. Find $alpha gt 0$ such that

  $ f(mathbf(x) + alpha mathbf(d)) lt.eq f(mathbf(x)) + alpha sigma (gradient f(mathbf(x)))^T mathbf(d). $
]

#env("Theorem")[
  Let $f in C^1(RR^n)$, $mathbf(x) in RR^n$, $sigma in (0, 1)$ and $mathbf(d) in RR^n$ be a descent direction at $mathbf(x)$. Then there exists $alpha_1 gt 0$ such that for all $alpha in [0, alpha_1]$,

  $ f(mathbf(x) + alpha mathbf(d)) lt.eq f(mathbf(x)) + alpha sigma (gradient f(mathbf(x)))^T mathbf(d). $
]

#env("Method", name: "Armijo line search by backtracking")[
  Fix $sigma in (0, 1)$ and $beta in (0, 1)$. Given $mathbf(x) in RR^n$, $mathbf(d) in RR^n$ and $overline(alpha) gt 0$. Find the smallest nonnegative integer $j$ such that

  $ f(mathbf(x) + overline(alpha) beta^j mathbf(d)) lt.eq f(mathbf(x)) + overline(alpha) beta^j sigma (gradient f(mathbf(x)))^T mathbf(d), $

  then the stepsize generated is $overline(alpha) beta^j$.
]

#env("Theorem", name: "Convergence under Armijo rule")[
  Let $f in C^1(RR^n)$ with $inf f gt -infinity$. Let ${overline(alpha)^([k])} subset RR$ satisfies $0 lt inf_k alpha^([k]) lt.eq sup_k alpha^([k]) lt infinity$, and fix $sigma in (0, 1)$ and $beta in (0, 1)$. Suppose ${mathbf(x)^([k])}$ is generated as $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha^([k]) mathbf(d)^([k])$, where

  - $mathbf(d)^([k]) = -D^([k]) gradient f(mathbf(x)^([k]))$, where ${D^([k])}$ is a bounded sequence of positive definite matrices with $D^[k] - delta I succ.eq 0$ for some $delta$;

  - $alpha^([k])$ is generated via the Armijo line search by backtracking.

  Then any accumulation point of ${ x^[k] }$ is a stationary point of $f$.
]

#env("Definition", name: "Wolfe's condition")[
  Let $0 lt c_1 lt c_2 lt 1$, $mathbf(x) in RR^n$ and $mathbf(d) in RR^n$. Find $alpha$ such that

  $ & "(Armijo rule)" & #h(1em) f(mathbf(x) + alpha mathbf(d)) lt.eq f(mathbf(x)) + alpha c_1 (gradient f(mathbf(x)))^T mathbf(d), \
  & "(curvature condition)" & #h(1em) -(gradient f(mathbf(x) + alpha mathbf(d)))^T mathbf(d) lt.eq - c_2 (gradient f(mathbf(x)))^T mathbf(d). $
]

#env("Theorem", name: "Wolfe's conditions are not void")[
  Let $f in C^1(RR^n)$ with $inf f gt -infinity$ and $mathbf(d) in RR^n$ be a descent direction at $mathbf(x)$. Let $0 lt c_1 lt c_2 lt 1$. Then there exists $alpha gt 0$ with

  $ & "(Armijo rule)" & #h(1em) f(mathbf(x) + alpha mathbf(d)) lt.eq f(mathbf(x)) + alpha c_1 (gradient f(mathbf(x)))^T mathbf(d), \
  & "(curvature condition)" & #h(1em) -(gradient f(mathbf(x) + alpha mathbf(d)))^T mathbf(d) lt.eq - c_2 (gradient f(mathbf(x)))^T mathbf(d). $
]

#env("Theorem", name: "Strong Wolfe conditions")[
  Let $0 lt c_1 lt c_2 lt 1/2$, $mathbf(x) in RR^n$ and $mathbf(d) in RR^n$. Find $alpha gt 0$ such that

  $ f(mathbf(x) + alpha mathbf(d)) lt.eq f(mathbf(x)) + alpha c_1 gradient f(mathbf(x))^T mathbf(d),\
   abs(gradient f(mathbf(x) + alpha mathbf(d))^T mathbf(d)) lt.eq c_2 abs(gradient f(mathbf(x))^T mathbf(d)). $
]

=== Exact line search

#env("Definition")[
  Given a function $f: RR^n -> RR$, a initial point $mathbf(x)$ and a direction $mathbf(d)$, denoted by $phi(alpha) = f(mathbf(x) + alpha mathbf(d))$, a *exact line search* method solves the problem

  $ phi(alpha) =  min_(t in RR^+) phi(t). $
]

#env("Method", name: "Success-failure method")[
  For a one-dimensional line search problem, the *success-failure method* is an inexact one-dimensional line search method to solve the interval $[a, b] in [0, +infinity)$ that exact solution $alpha^* in [a, b]$, where we

  + Choose initial value $alpha_0 in [0, +infinity)$, $h_0 > 0$, $t > 0$(commonly choose $t = 2$), calculate $phi(alpha_0)$ and let $k = 0$;
  + Let $alpha_(k+1) = alpha_k + h_k$ and calculate $phi(alpha_(k+1))$, if $phi(alpha_(k+1)) < phi(alpha_k)$, then go to (3), otherwise go to (4);
  + Let $h_(k+1) = t h_k$, $alpha = alpha_k$, $k = k + 1$, and go to (2);
  + If $k = 0$, then let $h_k = -h_k$ and go to (2), otherwise stop and the solution $[a, b]$ satisfies $ a = min{alpha, alpha_k}, #h(1em) b = max{alpha, alpha_k}. $
]

#env("Definition")[
  A general form of one-dimensional line search method is the following three steps:

  + *Initialization*: given initial point $mathbf(x)$ and acceptable error $epsilon > 0$, $delta > 0$;
  + *Iteration*: calculate the direction $mathbf(d)$ and step size $alpha$ that $f(mathbf(x) + alpha mathbf(d)) = limits(min)_(t in RR^+) f(mathbf(x) + t mathbf(d))$ and let $mathbf(x) = mathbf(x) + alpha mathbf(d)$;
  + *Stop condition*: if $||nabla f(mathbf(x))|| <= epsilon$ or $U_(RR^n) (x, delta)$ includes the exact solution, then the current $mathbf(x)$ is the solution.

  where the iteration step are repeated until $mathbf(x)$ satisfies the stop condition.
]

#env("Definition")[
  Given a method, denoted by ${mathbf(x)_k}$ the sequence of the iteration and $mathbf(x)^*$ the exact solution, the method is *(Q-)linear convergence* if

  $ lim_(k -> infinity) (||mathbf(x)_(k+1) - mathbf(x)^*||)/(||mathbf(x)_k - mathbf(x)^*||) in (0, 1), $

  the method is *(Q-)sublinear convergence* if

  $ lim_(k -> infinity) (||mathbf(x)_(k+1) - mathbf(x)^*||)/(||mathbf(x)_k - mathbf(x)^*||) = 1, $

  the method is *(Q-)superlinear convergence* if

  $ lim_(k -> infinity) (||mathbf(x)_(k+1) - mathbf(x)^*||)/(||mathbf(x)_k - mathbf(x)^*||) = 0. $

  For a superlinear convergence method,  the method is $r$-order linear convergence if

  $ lim_(k -> infinity) (||mathbf(x)_(k+1) - mathbf(x)^*||)/(||mathbf(x)_k - mathbf(x)^*||^r) in [0, +infinity), $

  where when $r = 2$ is called *(Q-)quadratic convergence*.
]

#env("Remark")[
  There is another *R-convergence* for judging a sequence which use another Q-convergence sequence as the boundary of ${||mathbf(x)_k - x^*||}$, but is not needed here.
]

#env("Method", name: "Golden section method")[
  Given the initial point $mathbf(x)$, an interval $[a, b]$ and $delta > 0$,

  - The iteration step is:
    + Calculate the two testing points $lambda = a + (1 - k) (b - a)$ and $mu = a + k (b - a)$ where $k = (sqrt(5) - 1)/2$ is the golden ratio;
    + If $phi(lambda) > phi(mu)$, let $a = lambda$, otherwise let $b = mu$.
  - The stop condition is $b - a <= delta$;
  - The solution is $mathbf(x) + (a+b)/2 mathbf(d)$.
]

#env("Theorem")[
  The golden section method is a *linear convergent* method.
]

#env("Method", name: "Fibonacci method")[
  Given the initial point $mathbf(x)$, an interval $[a, b]$ and $delta > 0$,

  - The $k$-th iteration step is:
    + Calculate the two testing points $lambda = a + F_(k) / F_(k+2) (b - a)$ and $mu = a + F_(k+1) / F_(k+2) (b - a)$ where $F_k$ is the $k$-th fibonacci number and $k$;
    + If $phi(lambda) > phi(mu)$, let $a = lambda$, otherwise let $b = mu$.
  - The stop condition is $b - a <= delta$;
  - The solution is $mathbf(x) + (a+b)/2 mathbf(d)$.
]

#env("Theorem")[
  The Fibonacci method is a *linear convergent* method.
]

#env("Method", name: "Bisection method")[
  Given the initial point $mathbf(x)$, an interval $[a, b]$ and $delta > 0$,

  - The iteration step is:
    + Calculate the midpoint $m = (a + b)/2$ and $phi(m)$;
    + If $nabla f(m) dot.c d < 0$, let $a = m$, otherwise let $b = m$.
  - The stop condition is $b - a <= delta$;
  - The solution is $mathbf(x) + (a+b)/2 mathbf(d)$.
]

#env("Theorem")[
  The bisection method is a *linear convergent* method.
]

#env("Method", name: "Newton's method")[
  Given the initial point $mathbf(x)$ and $epsilon > 0$,

  - The iteration step is:
    + Calculate $(nabla^2 f(mathbf(x)))^T dot.c mathbf(d)$ and $(nabla f(mathbf(x)))^T dot.c mathbf(d)$;
    + Let $mathbf(x) = mathbf(x) - ((nabla f(mathbf(x)))^T dot.c mathbf(d))/((nabla^2 f(mathbf(x)))^T dot.c mathbf(d))$;
  - The stop condition is $(nabla f(mathbf(x)))^T dot.c mathbf(d) <= epsilon$;
  - The solution is $mathbf(x)$.
]

#env("Theorem")[
  The Newton's method is a *quadratic convergent* method.
]

== Unconstrained Optimization

#env("Definition")[
  Given a convex function $f: RR^n -> RR$, a *unconstrained optimization* method solves the problem

  $ min_(mathbf(x) in RR^n) f(mathbf(x)) $

  by

  + *Initialization*: given initial point $mathbf(x)$ and acceptable error $epsilon > 0$, $delta > 0$;
  + *Iteration*: calculate the direction $mathbf(d)$ and step size $alpha$, then let $mathbf(x) = mathbf(x) + alpha mathbf(d)$;
  + *Stop condition*: if $||nabla f(mathbf(x))|| <= epsilon$ or $U_(RR^n) (mathbf(x), delta)$ includes the exact solution, then the current $mathbf(x)$ is the solution.
]

=== Gradient descent method

#env("Method", name: "Gradient descent with exact line search")[\
  Given $f in C^1 (RR^n)$,

  #h(2em) Initialize: $mathbf(x)^([0])in RR^n$,

  #h(2em) For $k in NN$,

  + Set $mathbf(d)^([k]) = -gradient f(mathbf(x)^([k]))$;

  + Pick $alpha^([k]) in limits(arg min)_(alpha in RR^+) {f(mathbf(x)^([k]) + alpha mathbf(d)^([k]))}$;

  + Set $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha^([k]) mathbf(d)^([k])$.
]

#env("Corollary", name: "Gradient descent with constant stepsize")[
  Let $f in C^2(RR^n)$ with $inf f gt -infinity$. Suppose that there exists $L gt 0$ such that

  $ forall mathbf(x) in RR^n, L gt.eq norm(gradient^2 f(mathbf(x))). $

  For any fixed $gamma in (0, 2)$, and the sequence generated as

  $ x^([k+1]) = x^([k]) - gamma/L gradient f(x^([k])), $

  then any accumulation point of ${ x^[k] }$ is a stationary point of $f$.
]

#env("Theorem")[
  The gradient descent method is a *linear convergent* method.
]

=== Newton's method

#env("Method", name: "Newton's method")[
  Given $f in C^2 (RR^n)$,

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$,

  #h(2em) For $k in NN$,

  + $mathbf(x)^([k+1]) = mathbf(x)^([k]) - (gradient^2 f(mathbf(x)^([k])))^(-1) gradient f(mathbf(x)^([k]))$.
]

#env("Theorem")[
  The Newton's method is a *quadratic convergent* method.
]

#env("Example", name: "Failure of Newton's method")[
  Given function $g = x - x^3$ and starting point $x^([0]) = 1/sqrt(5)$, then the sequence of iteration is

  $ x^([1]) = -1/sqrt(5), x^([2]) = 1/sqrt(5), dots. $
]

=== Quasi-Newton methods

#env("Method", name: "Secant method")[
  To solve $g(x) = 0$ where $g(x) in C^1(RR)$. Let $x^[0], x^[1] in RR$ and $g(x^[0]) eq.not g(x^[1])$, for $k = 1, dots, $, use finite difference to approximate $g^prime$ in Newton's method, i.e.

  $ x^([k+1]) = x^([k]) - g(x^[k]) (x^[k] - x^[k-1])/(g(x^[k]) - g(x^[k-1])). $
]

#env("Definition", name: "Secant equations")[
  Let $f in C^2(RR^n)$ and given $mathbf(x)^[k+1]$ and $mathbf(x)^[k]$, we expect

  $ gradient^2 f(mathbf(x)^[k+1]) (mathbf(x)^[k+1] - mathbf(x)^[k]) approx gradient f(mathbf(x)^[k+1]) - gradient f(mathbf(x)^[k]). $

  Let $mathbf(s)^[k] = mathbf(x)^[k+1] - mathbf(x)^[k]$, $mathbf(y)^[k] = gradient f(mathbf(x)^[k+1]) - gradient f(mathbf(x)^[k])$ and $B^[k+1] = (H^[k+1])^(-1)$ be the matrix constructed to approximate $gradient^2 f(mathbf(x)^[k+1])$,

  $ B^[k+1] mathbf(s)^[k] = mathbf(y)^[k], " " H^[k+1] mathbf(y)^[k] = mathbf(s)^[k]. $
]

#env("Example", name: "Popular update formula")[
  Initialize $B^[0]$ or $H^[0]$ at a positive definite matrix, then update by

  *DFP*:

  #align(center)[
    $B^[k+1] = (I - (mathbf(y)^[k] mathbf(s)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k])) B^[k] (I - (mathbf(s)^[k] mathbf(y)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k])) + (mathbf(y)^[k] mathbf(y)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k]),\ H^[k+1] = H^[k] + (mathbf(s)^[k] mathbf(s)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k]) - (H^[k] mathbf(y)^[k] mathbf(y)^[k]^T H^[k])/(mathbf(y)^[k]^T H^[k] mathbf(y)^[k]);$
  ]

  *BFGS*:

  #align(center)[
    $B^[k+1] = B^[k] + (mathbf(y)^[k] mathbf(y)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k]) - (B^[k] mathbf(s)^[k] mathbf(s)^[k]^T B^[k])/(mathbf(s)^[k]^T B^[k] mathbf(s)^[k]),\ H^[k+1] = (I - (mathbf(s)^[k] mathbf(y)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k])) H^[k] (I - (mathbf(y)^[k] mathbf(s)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k])) + (mathbf(s)^[k] mathbf(s)^[k]^T)/(mathbf(y)^[k]^T mathbf(s)^[k]);$
  ]

  *SR1*:

  #align(center)[
    $B^[k+1] = B^[k] + ((mathbf(y)^[k] - B^[k] mathbf(s)^[k])(mathbf(y)^[k] - B^[k] mathbf(s)^[k])^T)/((mathbf(y)^[k] - B^[k] mathbf(s)^[k])^T mathbf(s)^[k]),\ H^[k+1] = H^[k] + ((mathbf(s)^[k] - H^[k] mathbf(y)^[k]) (mathbf(s)^[k] - H^[k] mathbf(y)^[k])^T)/((mathbf(s)^[k] - H^[k] mathbf(y)^[k])^T mathbf(y)^[k]).$
  ]
]

#env("Remark")[
  - DFP and BFGS are rank-2 updates, while SR1 is rank-1 update.

  - Since $B^[0]$ and $H^[0]$ are symmetric, all $B^[k]$ and $H^[k]$ are symmetric by induction.

  - In practice, BFGS usually performs better.
]

#env("Method", name: "Basic Quasi-Newton method")[
  Given $f in C^1 (RR^n)$,

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$ and $B^[0] succ 0$ (or $H^[0] succ 0$),

  #h(2em) For $k in NN$,

  + Find $mathbf(d)^[k]$ via $B^[k] mathbf(d)^[k] = -gradient f(mathbf(x)^[k])$ (or $mathbf(d)^[k] = -H^[k] gradient f(mathbf(x)^[k])$);

  + Update $mathbf(x)^[k+1] = mathbf(x)^[k] + alpha^[k] mathbf(d)^[k]$ where $alpha^[k] > 0$;

  + Set $y^[k] = gradient f(mathbf(x)^[k+1]) - gradient f(mathbf(x)^[k])$, $s^[k] = mathbf(x)^[k+1] - mathbf(x)^[k]$ and compute $B^[k+1]$ (or $H^[k+1]$).
]

#env("Proposition")[
  Let $H^[k] succ 0$ and $mathbf(y)^[k]^T mathbf(s)^[k] gt 0$ and $H^[k+1]$ be given by BFGS update, then $H^[k+1] succ 0$.

  The same conclusion holds if $H^[k]$ and $H^[k+1]$ are replaced by $B^[k]$ and $B^[k+1]$, respectively.
]

#env("Method", name: "Quasi-Newton method with Wolfe line search")[
  Given $f in C^1 (RR^n)$ with $inf f gt -infinity$,

  #h(2em) Initialize: $0 lt c_1 lt c_2 lt 1$, $x^[0] in RR^n$,  and $H^[0] = eta I$ for some $eta gt 0$,

  #h(2em) For $k in NN$,

  + Find $d^[k]$ via $d^[k] = -H^[k] gradient f(x^[k])$;

  + Compute $alpha^[k]$ that satisfies the Wolfe's condition;

  + Update $x^[k+1] = x^[k] + alpha^[k] d^[k]$;

  + Set $y^[k] = gradient f(x^[k+1]) - gradient f(x^[k])$, $s^[k] = x^[k+1] - x^[k]$ and compute $H^[k+1]$ as in BFGS.
]

#env("Theorem", name: "Zoutendijk's theorem")[
  For $f in C^1(RR^n)$ with $inf f gt -infinity$, $x^[0] in RR^n$ and exists $l gt 0$ such that for all $x, y$ with $max{f(x), f(y)} lt.eq f(x^[0])$,

  $ norm(gradient f(x) - gradient f(y))_2 lt.eq l norm(x - y)_2. $

  Then for a sequence ${x^[k]}$ with non-stationary points generated as

  $ x^[k+1] = x^[k] + alpha^[k] d^[k], $

  with $d^[k]$ a descent direction and $alpha^[k]$ satisfying the Wolfe's condition, then it holds that

  $ sum_(k=0)^infinity cos^2 (theta^[k]) norm(gradient f(x^[k]))_2^2 lt infinity, $

  where

  $ cos(theta^[k]) = (-(gradient f(x^[k]))^T d^[k])/(norm(gradient f(x^[k]))_2 norm(d^[k])_2). $
]

#env("Corollary")[
  If there exists $k gt 0$ such that $cos(theta^[k]) gt.eq delta$ for all $k$, then $lim_(k -> infinity) norm(gradient f(x^[k]))_2 = 0$. Hence, any accumulation point of ${ x^[k] }$ is stationary.

  For BFGS, if there exists $M gt 0$ such that for all $k in NN$ $norm(H^[k])_2 norm((H^[k])^(-1))_2 lt M$, then $lim_(k -> infinity) norm(gradient f(x^[k]))_2 = 0$.
]

#env("Theorem")[
  The Quasi-Newton method is a *superlinear convergent* method.
]

== Linear Programming

#env("Theorem", name: "Strong duality for LP, version I")[
  Let $A in RR^(m times n)$, $mathbf(b) in RR^m$ and $mathbf(c) in RR^n$. Consider

  $ v_p = sup_(mathbf(x) in RR^n) {mathbf(c)^T mathbf(x): A mathbf(x) = mathbf(b), " " mathbf(x) gt.eq 0}, v_d = inf_(mathbf(y) in RR^m) {mathbf(b)^T mathbf(y): mathbf(c) lt.eq A^T mathbf(y)}. $

  Suppose that there exists $hat(mathbf(x)) gt.eq 0$ with $A hat(mathbf(x)) = mathbf(b)$. Then $v_p = v_d$.
]

#env("Theorem", name: "Strong duality for LP, version I")[
  Let $A in RR^(m times n)$, $mathbf(b) in RR^m$ and $mathbf(c) in RR^n$. Consider

  $ v_p = sup_(mathbf(x) in RR^n) {mathbf(c)^T mathbf(x): A mathbf(x) = mathbf(b), " " mathbf(x) gt.eq 0}, v_d = inf_(mathbf(y) in RR^m) {mathbf(b)^T mathbf(y): mathbf(c) lt.eq A^T mathbf(y)}. $

  Suppose that either

  - there exists $hat(mathbf(x)) gt.eq 0$ with $A hat(mathbf(x)) = b$; or

  - there exists $hat(mathbf(y))$ with $mathbf(c) lt.eq A^T hat(mathbf(y))$.

  Then $v_p = v_d$ and both optimal values are attained when finite.
]

#env("Remark")[
  Recipe for writing dual problems:

  #align(center)[
    #table(
      align: center + horizon,
      columns: (1fr, 2fr, 2fr),
      [], $ max & mathbf(c)^T mathbf(x) \ "s.t. " & A mathbf(x) suit.club mathbf(b) \ & mathbf(x) diamond $, $ min & mathbf(b)^T mathbf(y) \ "s.t. " & A^T mathbf(y) diamond c \ & mathbf(y) suit.club $,
      $suit.club$, [$i$-th constraint $lt.eq$ \ $i$-th constraint $gt.eq$ \ $i$-th constraint $=$], [$i$-th variable $gt.eq 0$ \ $i$-th variable $lt.eq 0$ \ $i$-th variable unrestricted],
      $diamond$, [$j$-th variable $gt.eq 0$ \ $j$-th variable $lt.eq 0$ \ $j$-th variable unrestricted], [$j$-th constraint $gt.eq$ \ $j$-th constraint $lt.eq$ \ $j$-th constraint $=$],
    )
  ]
]

== Semidefinite Programming

#env("Definition")[
  The *primal-dual SDP pairs* is defined as:

  #align(center)[
    #table(
      align: (center + horizon),
      columns: (auto, auto),
      [Primal], $ min_(X in S^n) & tr(C X), \ "s.t. " & tr(A_i X) = b_i, i = 1, dots, m \ & X succ.eq 0 $,
      [Dual], $ max_(mathbf(y) in RR^n) & mathbf(b)^T mathbf(y), \ "s.t. " & C - sum_(i=1)^m mathbf(y)_i A_i succ.eq 0 $,
    )
  ]

  where $A_i, C in S^n$ for all $i$. Let $v_p$ and $v_d$ denote their optimal values.
]

#env("Theorem", name: "Strong duality for SDPs")[
  Consider the primal-dual SDP pairs, then the following statements holds:

  - If there exists $overline(X) succ 0$ such that $tr(A_i overline(X)) = mathbf(b)_i$ for all i, then $v_p = v_d$ and $v_d$ is attained while finite.

  - If there exists $overline(mathbf(y)) in RR^m$ such that $C - sum_(i=1)^m overline(mathbf(y))_i A_i succ.eq 0$, then $v_p = v_d$ and $v_p$ is attained while finite.
]

#env("Remark")[
  It always holds that $v_p gt.eq v_d$, indeed, for any primal feasible $X$ and dual feasible $mathbf(y)$, we have

  $ mathbf(b)^T y = sum_(i=1)^m mathbf(b)_i mathbf(y)_i = sum_(i=1)^m tr(A_i X) mathbf(y)_i = tr(sum_(i=1)^m  mathbf(y)_i A_i X) = tr((sum_(i=1)^m  mathbf(y)_i A_i - C) X) + tr(C X). $
]

#env("Theorem")[
  Let $A, C in S^n_+$, then $tr(A C) gt.eq 0$.
]

#env("Proposition")[
  Consider the primal-dual SDP pairs and the set

  $ hat(Upsilon) = {[tr(C X), tr(A_1 X), dots, tr(A_m X)]^T in RR^(m+1): X succ 0} $

  on the previous slide. Suppose that there exists $overline(y) in RR^m$ such that $C - sum_(i=1)^m overline(mathbf(y))_i A_i succ 0$. Then $hat(gamma)$ is closed.
]

#env("Theorem", name: "Schur complement")[
  Let $A in S^m$, $C in S^n$, $B in RR^(m times n)$ and $A succ 0$, then

  $ mat(A, B; B^T, C) succ.eq 0 <=> C - B^T A^(-1) B succ.eq 0. $

  We call $C - B^T A^(-1) B$ the Schur complement of A in $mat(A, B; B^T, C)$.
]

== Penalty/Barrier Methods

#env("Definition", name: "Penalty functions")[
 A function $P: RR^n -> RR$ is a penalty function for the constraint set ${x: forall i in I, g_i (mathbf(x)) lt.eq 0}$ if

 - $forall mathbf(x) in RR^n, P(mathbf(x)) gt.eq 0$;

 - $P(mathbf(x)) = 0$ iff $forall i in I, g_i (mathbf(x)) lt.eq 0$.
]

#env("Method", name: "Penalty method: basic version")[
  Let $c > 0$ and $eta > 1$.

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $c_1 = c$,

  #h(2em) For $k in NN$,

  + Find a minimizer $mathbf(x)^([k])$ of $q_(c_k)(mathbf(x)) = f(mathbf(x)) + c_k / 2 sum_(i=1)^m (max(g_i (mathbf(x)), 0))^2$, using $mathbf(x)^([k-1])$ as the initial point for the iterative method;
  + Update $c_(k+1) = eta c_k$.
]

#env("Theorem")[
  Consider

  $ & min_(mathbf(x) in RR^n) & & f (mathbf(x))\
    & " s.t. " & & g_i (x) lt.eq 0, i in I = {1, dots.c, m},\
    & "where" & & f, g_i in C^1, {x: forall i in I, g_i (mathbf(x)) lt.eq 0} eq.not emptyset.
  $

  and suppose that $inf f > 1$. Let ${mathbf(x)^([k])}$ be generated by the basic version penalty method. Then any accumulation point $x^*$ of ${x^([k])}$ is a globally optimal solution.
]

#env("Method", name: "Penalty method: practical version")[
  Let $c > 0$ and $eta > 1$.

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $c_1 = c$,

  #h(2em) For $k in NN$,

  + Find an $mathbf(x)^([k])$ such that $gradient q_(c_k) (mathbf(x)^([k])) approx 0$, using $mathbf(x)^([k-1])$ as the initial point for the iterative method;

  + Update $c_(k+1) = eta c_k$.
]

#env("Method", name: "Barrier method: basic version")[
  Let $mu > 0$ and $eta > 1$.

  #h(2em) Initialize: $mathbf(x)^[0] in SS^0$, $mu_1 = mu$,

  #h(2em) For $k in NN$,

  + Find a minimizer $mathbf(x)^([x])$ of $f_(mu_k) (x) = f(x) - mu_k sum_(i=1)^m ln(-g_i (mathbf(x)))$, using $mathbf(x)^([k-1])$ as the initial point for the iterative method;

  + Update $mu_(k+1) = mu_k / eta$.
]

== Conjugate Gradient Method

#env("Method", name: "Conjugate gradient method: Conceptual version")[

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $mathbf(d)^([0]) = -gradient f(mathbf(x)^([0])) = mathbf(b) - A mathbf(x)^([0])$,

  #h(2em) For $k in NN$,

  + If $d^([k]) = 0$, terminate;

  + Pick $alpha_k$ so that $alpha_k in limits(arg max)_(alpha gt.eq 0) {f(mathbf(x)^([k]) + alpha mathbf(d)^([k]))}$;

  + Set $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha_k mathbf(d)^([k])$ and $d^([k+1]) = -gradient f(mathbf(x)^([k+1])) - sum_(i=0)^k (-gradient f(mathbf(x)^([k+1]))^T A mathbf(d)^([j])) / (mathbf(d)^[j]^T A mathbf(d)^([j])) mathbf(d)^([j])$.
]

#env("Theorem")[
  Let $A succ 0$ and $mathbf(x)^([0]) in RR^n$. Set $d^([0]) = -gradient f(mathbf(x)^([0]))$. For $k in NN$, suppose that $mathbf(d)^([0]), dots, mathbf(d)^([k]) eq.not 0$, where for each $i = 0, dots, k-1$,

  $ mathbf(d)^([i+1]) = -gradient f(mathbf(x)^([i+1])) - sum_(j=0)^i (-gradient f(mathbf(x)^([i+1]))^T A mathbf(d)^([j])) / (mathbf(d)^[j]^T A mathbf(d)^([j])) mathbf(d)^([j]), $

  with $mathbf(x)^([i+1]) = mathbf(x)^([i]) + alpha_i mathbf(d)^([i])$ and $alpha_i$ coming from exact line search. Then for $j lt k + 1$, $gradient f(mathbf(x)^([j]))^T gradient f(mathbf(x)^([k+1])) = 0$ and $mathbf(d)^[j]^T gradient f(mathbf(x)^([k+1])) = 0$.
]

#env("Theorem")[
  For $k in NN$, $mathbf(x)^([k]), mathbf(d)^([k])$ are generated by conjugate gradient method, then

  $ mathbf(d)^([k+1]) = - gradient f(mathbf(x)^([k+1])) + norm(gradient f(mathbf(x)^([k+1])))_2^2 / norm(gradient f(mathbf(x)^([k])))_2^2 mathbf(d)^([k]). $
]

#env("Method", name: "Conjugate gradient method: Formal version")[

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $mathbf(d)^([0]) = -gradient f(mathbf(x)^([0])) = mathbf(b) - A mathbf(x)^([0])$,

  #h(2em) For $k in NN$,

  + If $d^([k]) = 0$, terminate;

  + Pick $alpha_k$ so that $alpha_k in limits(arg max)_(alpha gt.eq 0) {f(mathbf(x)^([k]) + alpha mathbf(d)^([k]))}$;

  + Set $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha_k mathbf(d)^([k])$ and $mathbf(d)^([k+1]) = - gradient f(mathbf(x)^([k+1])) + norm(gradient f(mathbf(x)^([k+1])))_2^2 / norm(gradient f(mathbf(x)^([k])))_2^2 mathbf(d)^([k])$.
]

#env("Method", name: "Conjugate gradient method: Actual version")[

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $mathbf(r)^([0]) = mathbf(d)^([0]) = -gradient f(mathbf(x)^([0])) = mathbf(b) - A mathbf(x)^([0])$,

  #h(2em) For $k in NN$,

  + If $norm(r^([k]))$ (or less commonly, $norm(d^([k]))$) is below a tolerance, terminate;

  + Compute $alpha_k = (mathbf(r)^[k]^T mathbf(r)^([k])) / (mathbf(d)^[k]^T A mathbf(d)^([k]))$, $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha_k mathbf(d)^([k])$, $mathbf(r)^([k+1]) = mathbf(r)^([k]) - alpha_k A mathbf(d)^([k])$;

  + Compute $beta_k = (mathbf(r)^[k+1]^T mathbf(r)^([k+1])) / (mathbf(r)^[k]^T mathbf(r)^([k]))$, $mathbf(d)^([k+1]) = mathbf(r)^([k+1]) + beta_k mathbf(d)^([k])$.
]

#env("Theorem", name: "Luenberger")[
  Consider the conjugate gradient method for minimizing $f(mathbf(x)) = 1/2 mathbf(x)^T A mathbf(x) - mathbf(b)^T mathbf(x)$ for some $mathbf(b) in RR^n$ and $A succ 0$. Let ${mathbf(x)^([k])}$ be the sequence generated and let $mathbf(x)^*$ be the minimizer of $f$. If $A$ has eigenvalues $0 lt lambda_1 lt.eq lambda_2 lt.eq dots.c lt.eq lambda_n$, then

  $ lambda_1 norm(mathbf(x)^([k+1]) - mathbf(x)^*)_2^2 lt.eq (mathbf(x)^([k+1]) - mathbf(x)^*)^T A (mathbf(x)^([k+1]) - mathbf(x)^*) lt.eq ((lambda_(n-k) - lambda_1)/(lambda_(n-k) + lambda_1))^2 (mathbf(x)^([0]) - mathbf(x)^*)^T A (mathbf(x)^([0]) - mathbf(x)^*) $
]

#env("Method", name: "Nonlinear conjugate gradient method: Conceptual version")[

  #h(2em) Initialize: $mathbf(x)^[0] in RR^n$, $mathbf(d)^([0]) = -gradient f(mathbf(x)^([0]))$,

  #h(2em) For $k in NN$,

  + If $d^([k])$ is small, terminate;

  + Pick $alpha_k$ judiciously (e.g. exact line search, strong Wolfe conditions);

  + Set $mathbf(x)^([k+1]) = mathbf(x)^([k]) + alpha_k mathbf(d)^([k])$ and $mathbf(d)^([k+1]) = - gradient f(mathbf(x)^([k+1])) + norm(gradient f(mathbf(x)^([k+1])))_2^2 / norm(gradient f(mathbf(x)^([k])))_2^2 mathbf(d)^([k])$.
]
