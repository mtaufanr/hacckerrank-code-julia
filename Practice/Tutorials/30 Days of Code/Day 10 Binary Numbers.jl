# https://www.hackerrank.com/challenges/30-binary-numbers/problem

function count_bin(n::Int)
    sn = string(n, base=2)
    consecutive_1 = Int[]
    count_1 = 0
    for i in 1:length(sn)
        if sn[i] == '1'
            count_1 += 1
            append!(consecutive_1, count_1)
        else
            count_1 = 0
            append!(consecutive_1, 0)
        end
    end
    return maximum(consecutive_1)
end

n = parse(Int, readline())
println(count_bin(n))