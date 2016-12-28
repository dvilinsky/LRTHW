#function header
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts "Get a blanket.\n\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 12000

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10+20, 5*600)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers +25)

#now I have to write some function and call it
#10 different ways. Kill me
def print_some(dumb_parameter1, dumb_parameter2)
    puts "I this is so tedious. You passed me #{dumb_parameter1}"
    puts """I haven't been taught anything yet, so I cant
          write anything cool yet."""
    puts dumb_parameter2 * 5
    puts "\n"
end

print_some(5, 20)
print_some(2+4, amount_of_cheese)
print_some(open(ARGV.first).read.length, 8)
print_some("types don't matter", "nope, not at all")
print_some(open(ARGV.first), 2) #this prints address of file. Cool?
print_some(2+4, "#{amount_of_cheese}")
#why isn't it complaining that this number is too big?
print_some("Something cool" *2, 25600000000045453423432424)
#what the hell is going on here?
print_some(print_some(15,6), 20)
print_some(NULL, 25) #is it passing null?
print_some(puts "hello world", 200)
