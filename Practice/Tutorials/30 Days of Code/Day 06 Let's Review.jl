# https://www.hackerrank.com/challenges/30-review-loop/problem

function get_input(n::Int)
    s = String[]
    for _ in 1:n
        append!(s, readlines())
    end
    return s
end

function print_sol(sa::Array{String})
    for i in eachindex(sa)
        s1 = sa[i][1:2:end]
        s2 = sa[i][2:2:end]
        println("$s1 $s2")
    end
end
        

n = parse(Int, readline())
s = get_input(n)
print_sol(s)