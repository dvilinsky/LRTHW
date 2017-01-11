#Class that runs any and all battle scenes. It generates and
#enemy object whose stats are based on those of the player's to make
#things fair. Then it sends those two objects into a loop, prompting
#the user for actions util
require "./player.rb"
class Battle
  #parameter: a player object, typically the character representing the
  #person playing the game
  def initialize(player=nil)
    @player = player
  end

  def set_player(player)
    @player = player
  end

  def create_enemy(difficulty_factor = 0)
    @foe = Enemy.new(@player, difficulty_factor)
  end
  #having initialized player and foe, they now engage in battle!
  def play
    puts "Oh no! An enemy has appeared before you! "
    puts "You must now fight to the death!"
    puts "Since this is an easy game, you get to go first"
    while @player.health > 0 && @foe.health > 0
      puts "How shall you proceed?"
      print "> "
      action = $stdin.gets.chomp
      if action.include? "attack"
        damage = (@player.attack - @foe.defence * 0.25) #defence moderates attack power
        @foe.health -= damage
        puts "You did #{damage} damage to your foe!"
      elsif action.include? "magic"
        damage = (@player.magic/2)
        puts "Your magic attack did #{damage} damage to your foe!"
        @foe.health -= damage
      else
         next
      end
      @foe.attack
    end
    if (@foe.health <= 0)
      @player.restore
      code = "win"
    else
      code = "Dead"
    end
    return code
  end
end

#creates an enemy for the player to fight. IF this were a bigger game
#there'd be more than one kind, with names and stuff. Not today, though
class Enemy
  def initialize(player, difficulty_factor = 0)
    @current_player = player
    easier = rand() + difficulty_factor
    #this is ugly- almost the same code is being written twice. Is there a better way
    if (easier <= 0.5) #easier
      @health = player.health - 10
      @attack = player.attack - 10
      @defence = player.defence - 10
      @magic = player.magic - 5
    else
      @health = player.health + 10
      @attack = player.attack + 10
      @defence = player.defence + 10
      @magic = player.magic + 5
    end
  end

  attr_accessor  :health, :attack, :defence, :magic

  def attack
    mode = rand() #this whole game is entirely built on random numbers...
    if mode < 0.33
      damage = @attack - (@current_player.defence * 0.25)
      @current_player.health -= damage
      puts "Oh no! Your opponent's physical attack did #{damage} damage to you!"
    elsif mode < 0.67
      damage = @magic/2
      @current_player.health -= damage
      puts "Eegads! Your opponent's magic attack did #{damage} damage to you!"
    else
      puts "You got lucky! Your oppoent did nothing!"
    end
  end
end
