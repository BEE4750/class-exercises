# activate and instantiate the environment
import Pkg
Pkg.activate(dirname(@__FILE__))
Pkg.instantiate()

using Random # tools for random numbers
using Distributions # statistical distributions
using Roots # find zeroes of functions
using Metaheuristics # search algorithms
using Plots # plotting

# lake function model
function lake(a, y, q, b, T)
    X = zeros(T+1, size(y, 2))
    # calculate states
    for t = 1:T
        X[t+1, :] = X[t, :] .+ a[t] .+ y[t, :] .+ (X[t, :].^q./(1 .+ X[t, :].^q)) .- b.*X[t, :]
    end
    return X
end

# function producing optimization outputs
function lake_opt(a, y, q, b, T, Xcrit)
    X = lake(a, y, q, b, T)
    # calculate exceedance of critical value
    Pexceed = sum(X[101, :] .> Xcrit) / size(X, 2)
    failconst = [Pexceed - 0.2]
    return mean(a), failconst, [0.0]
end

# use this as a scratch space for your code for the exercise.


# to optimize using DE (for example), use: 
# results = optimize(f, bounds, DE(options=Options(f_calls_limit=max_evals)))
