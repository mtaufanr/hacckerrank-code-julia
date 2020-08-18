# https://www.hackerrank.com/challenges/s10-basic-statistics/problem

using Statistics
using Printf

data = readlines()
n_data = parse(Float64, data[1])
values = [parse(Float64, x) for x in split(data[2])]

function mode(x)
    a_keys = sort(unique(x))
    a_counts = zeros(length(a_keys))

    for val in x
        ma = a_keys.==val
        a_counts[ma] .+= 1
    end

    max_counts = maximum(a_counts)
    if max_counts == 1.0
        return a_keys[1]
    else
        ma = a_counts.==max_counts
        return minimum(a_keys[ma])
    end
end

mean_val = mean(values)
median_val = median(values)
mode_val = mode(values)

@printf("%.1f\n", mean_val)
@printf("%.1f\n", median_val)
@printf("%.1f\n", mode_val)
