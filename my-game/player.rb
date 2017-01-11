#Defintion for player class. Holds all the information that
#that composes a player
class Player

  @@stats_start = {"health" => 100, "attack" => 20, "defence" => 20, "magic" => 25}

  def initialize
    @inventory = [] #holds stuff like swords, potions, etc
    @health = 100
    @attack = 20
    @defence = 20
    @magic = 25
    #commenting out num_lives until I decide to implement it
    #@num_lives = 3 #number of times player can go back to StartScene before game over
    @weapon = nil #user hasn't encountered anything yet. Fight with bare hands!
    @increment_factor = 2
  end

  #adds an item to the player's inveotry
  def add_item(item)
    @inventory.push(item)
    if item.include? "weapon"
      @weapon = item
    end
  end

  attr_accessor :inventory, :health, :attack, :defence, :magic

  #after a player wins a battle, their health needs to be restored
  #as well as have their stats increased because they won
  def restore
    @health = @@stats_start["health"] + @increment_factor
    @attack = @@stats_start["attack"] + @increment_factor
    @defence = @@stats_start["defence"]  + @increment_factor
    @magic = @@stats_start["magic"] + @increment_factor
    @increment_factor += 2
  end
end 
