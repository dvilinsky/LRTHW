puts "Welcome to a beginning implementation of a game I usedputs to play called NeoQuest!"
puts "You are a young blumaroo, out to change the world. Which direction do you go in?"

dir = $stdin.gets.chomp

if dir == "w" || dir == "west"
  puts "There is a dark forest. Do you want to go inside it? y/n"

  go = $stdin.gets.chomp

  if go == "y"
    puts "What were you thinking? Game over!"
  else
    puts "Good idea."
  end
elsif dir == "e" || dir == "east"
  puts "Some people are standing around there. Do you want to talk with them? y/n"

  talk = $stdin.gets.chomp

  if talk == "y"
    puts "They like you and want to join you on your adventure"
  else
    puts "Ho hum. Guess you should've been friendlier!"
  end
elsif dir == "n" || dir == "north"
  puts "There seems to be a road heading towards a town. Wanna go downtown? y/n"

  town = $stdin.gets.chomp

  if town == "y"
    puts "Congratulations. You made the right decision. You're well on your way to finishing the game!"
  else
    puts "Why not? Do you have any other bright ideas?"
  end 
elsif dir == "s" || dir == "south"
  puts "It's hot and steamy down here. You lose your way and have to restart!!"
else
  puts "That's not a direction!"
end
