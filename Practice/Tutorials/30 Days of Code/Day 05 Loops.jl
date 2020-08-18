# https://www.hackerrank.com/challenges/30-loops/problem

n = parse(Int64, readline())

function show_loop(v::Int64)
    for i in 1:10
        r = v * i
        println("$v x $i = $r")
    end
end

show_loop(n)