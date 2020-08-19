# https://www.hackerrank.com/challenges/30-conditional-statements/problem

n = parse(Int, readline())

function check_weird(v::Int)
    r_weird = "Weird"
    r_not_weird = "Not Weird"
    is_even = v % 2 == 0
    if is_even
        if 2 ≤ v ≤ 5
            return r_not_weird
        elseif 6 ≤ v ≤ 20
            return r_weird
        else
            return r_not_weird
        end
    else
        return r_weird
    end
end

println(check_weird(n))