# activate and instantiate the environment
import Pkg
Pkg.activate(dirname(@__FILE__))
Pkg.instantiate()

using Plots # plotting library
using Distributions # work with probability distributions

# use this as a scratch space for your code for the exercise.
