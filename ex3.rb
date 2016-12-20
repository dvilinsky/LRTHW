#print a blank line for easier readbility
puts ""

#print this line
puts "I will now count my chickens:"

#print hens, calculate interpolated string, print result
puts "Hens #{25 + 30 / 6}" #30

#same but with roosets
puts "Roosters #{100 - 25 * 3 % 4}" #97

#print this line
puts "Now I will count the eggs:"

#run calculation, print result
puts 3 + 2 + 1 - 5 + 4 % 2 - 0.1 / 4 + 6 #weird, you can't have fractional eggs

#print this line
puts "Is it true that 3 +3 < 5 - 7?"

#run calculation, print result
puts 3 + 2 < 5 - 7 #false

#print "What is 3+2", calculated 3+2, print result
puts "What is 3 + 2? #{3 + 2}"

#same as above
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false"

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"
puts ""
