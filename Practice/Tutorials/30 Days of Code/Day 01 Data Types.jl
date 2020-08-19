# https://www.hackerrank.com/challenges/30-data-types/problem

# Declare second integer, double, and String variables.
# Read and save an integer, double, and String to your variables.
inputs = readlines()
i = i + parse(Int, inputs[1])    
d = d + parse(AbstractFloat, inputs[2])
s = s * " " * inputs[3]

# Print the sum of both integer variables on a new line.
println(i)
# Print the sum of the double variables on a new line.
println(d)
# Concatenate and print the String variables on a new line
# The 's' variable above should be printed first.
println(s)
