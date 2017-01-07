the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count
  puts "This is count #{number}"
end

#or, more rubesque? ruby-esque? rubenesque? ruboque?
the_count.each do |num|
  puts "This is count #{num}"
end

fruits.each do |fruit|
  puts "A fruit of type #{fruit}"
end

change.each {|i| puts "I got #{i}"}

elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements.push(i)
end

elements.each do |elem|
  puts "Element was #{elem}"
end

#the following is surely impossible
('bar'..'baz').each do |s|
  puts s
end
#Why does this functionality exist!!!!!!????????

puts the_count.at(3)
the_count << 25
the_count.delete_if {|i| i%2 == 0}
puts the_count.to_s
puts the_count.include?(5)
