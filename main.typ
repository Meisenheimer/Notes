#import "book.typ": *

#show: book.with(
  title: "Handbook of Applied Mathematics",
  language: "en",
  show_outline: true,
  subtitle: none,
  authors: (
    (
      name: "Zeyu Wang",
      email: "zeyuwang@zuaa.zju.edu.cn",
      institude: none,
      corresponding: true,
    ),
  ),
)

#part("Mathematical Foundation")

#include "src/Analysis.typ"
#include "src/Algebra.typ"
#include "src/ODE.typ"
#include "src/PDE.typ"
#include "src/Probability.typ"
#include "src/StochasticProcess.typ"
#include "src/Statistics.typ"
#include "src/Graph.typ"
#include "src/Combinatorics.typ"

#part("Scientific Computing")

#include "src/Interpolation.typ"
#include "src/Integration.typ"
#include "src/Optimization.typ"
#include "src/IVP.typ"
#include "src/NumberTheory.typ"

#part("Machine Learning")

#include "src/Regression.typ"
#include "src/DecisionTree.typ"
#include "src/SVM.typ"
#include "src/Cluster.typ"
#include "src/NeuralNetworks.typ"

