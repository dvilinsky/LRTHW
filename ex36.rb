#since I don't know how to make classes yet, I'll be using an array
#to maintain the characters state /shudder/. Even a dictionary would be
#better here
player = ['health', 100, 'magic', 25, 'strength', 30, 'weapon', 'shortsword', 'damage_done', 12]

#uses a random number generator, then depending on who has mmore
#strength and magic skews the result toward either the player or the enemy
#parameter: another array /shudder/ containing the enemy's state
def fight(enemy)
   player_mag_strength = player[3] + player[5] #kill me now
   enemy_mag_strength = enemy[3] + enemy[5]
   while player[1] > 0 || enemy[1] > 0 #somebody stop me
     r = rand()
     skew = r >= 0.0 && r <= 0.7
     #skey toward player
     if player_mag_strength >= enemy_mag_strength
       if skew
         enemy[1] -= player[-1]
       else
         player[1] -= enemy[-1]
       end
     else
       if skew
        player[1] -= enemy[-1]
       else
        enemy[1] -= player[-1]
       end
     end
   end
   if player[1] > 0
     puts "You won this fight! Good job!"
   elsif enemy[1] > 0
     puts "The enemy killed you. You lose"
  end
end

#creates one of those awful state arrays for the enemy in a particular naive way
#basically just uses random numbers. IF I was more invested in this exercises, I'd do something more clever
def generate_enemy
  health = rand(player[1] - 15...player[1] + 15)
  magic = rand(player[3] - 5...player[3] + 5)
  strength = rand(player[5] - 10...player[5] + 10)
  damage_done = rand(player[-1] - 4...player[-1] + 4)
  return ['health', health, 'magic', magic, 'strength', strength, 'weapon', 'shortsword', 'damage_done', damage_done]
end

#returns true if join is yes, false otherwise
def decide(join)
  return (join == "y" || join == "yes")
end

print "Hello there, fellow traveler. Since I really like neoquest, this will be a slighlt more "
puts "spaghettified version of the code that I wrote a few exercies ago."
puts "Do you wish to join me? y/n"
print "> "
join = $stdin.gets.chomp

if decide(join)
  puts "Fantastic! Once I finish writing the game, we'll have adventures!"
else
  puts "Too bad!"
  exit(0)
end
