def gold_room
  puts "This is a room full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if /0/ =~ choice || /1/ =~ choice
    how_much = choice.to_i
  else
    dead("Man, learn how to type a number")
  end

  if how_much < 50
    #funny. It doesn't complain that how_much hasn't been initialized
    puts "Nice, you weren't greedy! Winner!"
    exit(0)
  else
    dead("you geedy sunuvabitch!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of a door."
  puts "How are you going to move the bear?"
  bear_moved = false

  #this loop only ends when the user makes the right decisions to win the game
  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear slaps your face off")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice ==  "taunt bear" && bear_moved
      dead("The bear gets pissed and chews your leg off")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I don't know what that means"
    end
  end
end

def cthulu_room
  puts "Here you see the great evil cthulu"
  puts "He, it, whatever stares at you and starts to go insane"
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.inclue? "head"
    dead("Well that was tasty")
  else
    cthulu_room
  end
end

def dead(why)
  puts why, "Good job"
  exit(0)
end

def start
  puts "You are in a dark room. "
  puts "There is a door to your right and your left"
  puts "Which door do you take?"

  print "> "
  choice = $stdin.gets.chomp
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulu_room
  else
    dead("You stumble around the room until you starve")
  end
end

start
