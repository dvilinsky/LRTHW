user_name, last_name = ARGV
prompt = '>Enter some stuff: '

puts "Hi #{user_name} #{last_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me, #{user_name}?"
print prompt
likes = $stdin.gets.chomp

puts "Where do you live, #{user_name}?"
print prompt
lives = $stdin.gets.chomp

#a comma for puts is like using it twice, pretty cool
#also works for print
print "What kind of computer do you have? \n", prompt
computer = $stdin.gets.chomp

puts """
Alright, so said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
