# https://www.hackerrank.com/challenges/s10-weighted-mean/problem

using Printf

function mean_weighted(x::Array{Float64}, w::Array{Float64})
    return sum(x.*w) / sum(w)
end

n = readline()
values = [parse(Float64, x) for x  in split(readline())]
weights = [parse(Float64, x) for x  in split(readline())]

@printf("%.1f", mean_weighted(values, weights))