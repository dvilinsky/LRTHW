def add(a, b)
    puts "ADDING #{a} + #{b}"
    return a + b
end

def subtract(a, b)
    puts "SUBRTRACTING #{a} - #{b}"
    a - b #this still works. That's messed up
end

def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}"
    return a * b
end

def divide(a, b)
    puts "DIVIDING #{a} / #{b}"
    return a / b
end

def exponentiate(a, b)
    return a ** b
end

def volume_of_sphere(radius)
    pi = 22/7.0 #not quite pi
    return multiply(divide(4, 3.0), multiply(pi, exponentiate(radius, 3)))
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle"

what = add(age, add(height, multiply(weight, divide(iq, 2))))

puts "That becomes #{what}. Can you do it by hand?"

radius = 6
volume_sphere = multiply( divide(4, 3.0), multiply(divide(22, 7.0), exponentiate(radius, 3)) )
puts volume_sphere
puts volume_of_sphere(5)
