# activate and instantiate the environment
import Pkg
Pkg.activate(dirname(@__FILE__))
Pkg.instantiate()

using JuMP # optimization library
using HiGHS # optimization solver for LP

# use this as a scratch space for your code for the exercise.
