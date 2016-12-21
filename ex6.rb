#assign value of 10 to types_of_people
types_of_people = 10
#set x equal to that sentence
x = "There are #{types_of_people} types of people."
#set value of binary
binary = "binary"
#set value of do_not
do_not = "don't"
#set y equal to that sentence
y = "Those who know #{binary} and those who #{do_not}."

#print a newline for ease of readbility, then print x
puts "\n" + x
#print y
puts y

#print this string which includes x. Question: interpolation vs concatenation?
puts "I said: #{x}."
#print this string, interpolating y
puts "I also said: '#{y}'."

#set value of hilarious
hilarious = false
#set value of joke_evaluation, interpolating hilarious
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#print joke_evaluation
puts joke_evaluation

#set w
w = "This is the left side of..."
#set e
e = "a string with a right side."

#this time use string concatenation to print them out,
#plut some newlines for clarity
puts w + e + "\n\n"
