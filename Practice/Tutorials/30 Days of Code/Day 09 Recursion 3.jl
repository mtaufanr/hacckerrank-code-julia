# https://www.hackerrank.com/challenges/30-recursion/problem

function factorial_(n::Int)
    if n ≤ 1
        return 1
    else
        return n * factorial_(n - 1)
    end
end

n = parse(Int, readline())

println(factorial_(n))
# @show factorial(n) == factorial_(n)