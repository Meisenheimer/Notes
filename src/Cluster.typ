#import "../config.typ": env, mathbf

= Cluster

== K-means

#env("Definition")[
  Given points $mathbf(x)_1, dots, mathbf(x)_m in RR^n$, *k-means clustering* aims to partition the points into $k lt.eq n$ sets $S = {S_1, dots, S_k}$ satisfies

  $ S = limits(arg min)_(S) {sum_(i=1)^k sum_(mathbf(x) in S_i) ||mathbf(x) - mathbf(mu)_i||^2}, $

  where $mathbf(mu)_i$ is the mean (centroid) of points in $S_i$, i.e. denoted by $|S_i|$ the size of $S_i$,

  $ mathbf(mu)_i = 1/(|S_i|) sum_(mathbf(x) in S_i) mathbf(x). $
]


#env("Theorem")[
  Denoted by $mathbf(x)_1, dots, mathbf(x)_m in RR^n$ the points and $S = {S_1, dots, S_k}$ sets given by K-means,

  $ S = limits(arg min)_(S) {sum_(i=1)^k 1/(|S_i|) sum_(mathbf(x), mathbf(y) in S_i) ||mathbf(x) - mathbf(y)||^2}. $
]

#env("Method", name: "K-means clustering")[
  Denoted by $S^((t)) = {S_1^((t)), dots, S_k^((t))}$ the sets given by k-means at $t$-th step and $mathbf(mu)_i^((t))$ the mean of $S_i^((t))$, the algorithm proceeds by

  + *Assignment*: Assign each point to the cluster with the nearest mean, $ S_i^((t)) = {mathbf(x)_p: forall j in {1, dots, k}, ||mathbf(x)_p - mathbf(mu)_i^((t))||^2 lt.eq ||mathbf(x)_p - mathbf(mu)_j^((t))||^2}; $
  + *Update*: Recalculate means (centroids) of each cluster, $ mathbf(mu)_i^((t)) = 1/(|S_i^((t))|) sum_(mathbf(x) in S_i^((t))) mathbf(x). $
]