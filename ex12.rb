print "Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}"
print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number/100
puts "A smaller number is #{smaller}"

print "Give me a third number: "
third = gets.chomp.to_f
puts "#{third}"

print "Give me some money: "
money = gets.chomp.to_f
puts "#{money * 0.1}"
