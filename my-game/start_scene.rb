#Class definition for the starting scene of the game. Here's how each scene
#works. It is initialized (maybe) with a player object sent to it from the
#Game class. It displays some prompts for the user as well as what the user
#can do. After the use has done something, it sends a code back to the game
#class which then says what scene to display next.
require "./player.rb"
require "./battle.rb"
class StartScene
  def initialize(player=nil)
    @player = player
  end

  def set_player(player)
    @player = player
  end

  #the real meat of the program. Returns a code so that the game keeps running
  def play
    display_intro
    action = $stdin.gets.chomp.downcase
    prob_fight = rand()
    code = ""

    #character can go either north, south, east, or west.
    if action.include? "north"
      code = "Cave"
      if (prob_fight <= 0.65) #let's say 55% chance of enemies in this direction
        code = do_battle(code) #kind of bad
      end
    elsif action.include? "east"
      code = "Town"
      if (prob_fight <= 0.2)
        code = do_battle(code)
      end
    elsif action.include? "west"
      code = "Generic"
      if (prob_fight <= 0.4)
        code = do_battle(cod)
      end
    elsif action.include? "south"
      puts "Here be dragons!"
      code = do_battle(code)
    end

    return code

  end

  #paremeter: what the code was before the fight
  def do_battle(code)
    fight = Battle.new(@player)
    fight.create_enemy
    code = (fight.play == "Dead") ? "Dead" : code
    return code
  end

  def display_intro
    puts "Welcome to Neopia! A dark and mysterious evil force has swept over "
    puts "the land, and you are determined to do something about it. So, armed"
    puts "with only your wits, will, and your bare hands for defeating enemies, "
    puts "you embark from your home on the quiet plains. Where do you want to go?"
    puts "\n"
  end
end
