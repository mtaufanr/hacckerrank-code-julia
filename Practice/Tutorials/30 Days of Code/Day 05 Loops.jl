# https://www.hackerrank.com/challenges/30-loops/problem

n = parse(Int, readline())

function show_loop(v::Int)
    for i in 1:10
        r = v * i
        println("$v x $i = $r")
    end
end

show_loop(n)