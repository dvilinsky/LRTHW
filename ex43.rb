#currently a work in progress as I figure out how to go from one scene
#to another, as well as how to start the game 
class Scene

  def enter()
    puts "I'm not sure what the point of this scene is if every subclass"
    puts "ends up overriding it anyways"
  end

end

class Death < Scene

  def enter()
    puts "You are in the death scene. This is the afterlife and you "
    puts "have died. Nice going fucko"
  end

end

#the central corridor is the start of the game
class CentralCorridor < Scene
  def enter()
    puts "Dazed and confused, with sirens blaring, you wake up in a corridor"
    puts " only to find that a Gothon is standing in front of you. "
    puts "You need to defeat him to continue, so that eventually you make "
    puts "your way to the escape pod. What do you want to do?"

    action = $stdin.gets.chomp
    result(action)
  end

  def result(action)
    action = action.downcase()
    if action.include? "shoot"
      puts "You shoot a bolt of energy at the Gothon. However,"
      puts " his shields are too strong and they block the laser."
      puts "He fires back at you, and because of his superior weaponry, "
      puts "you die. The game is over!"
      #########HERE WE NEED CODE TO GET US TO THE NEXT SCENE
    elsif action.include? "joke"
      puts "Good thinking! You tell a hil-arious joke, and the Gorthon "
      puts "starts to laugh. He laughs harder and harder until his "
      puts "insides explode. Ick"
      ###SOMEHOW GET TO THE NEXT SCENE
    elsif ((action.include? "run") || (action.include? "dodge"))
      puts "Where are you going to go? Into the garbage shoot a la star wars? "
      puts "Game is over again. Think, man, think!"
      ###go to the next scnee!!!
    end
  end
end

class LaserWeaponArmory < Scene
  def enter()
  end
end

class TheBridge < Scene
  def enter()
  end
end

class EscapePod < Scene
  def enter()
  end
end

class Map
  #paramter: a string which is the name of the start scene
  def initialize(start_scene)
    @start_scene = start_scene
  end

  #given a scene name, move us to the next scene
  def next_scene(scene_name)
  end

  def opening_scene()
  end
end

class Engine
  #parameter: a map object
  def initialize(scene_map)
    @game_map = scene_map
  end

  def play()
    @game_map.opening_scene()
  end

end

a_map = Map.new("central_corrdor")
a_game = Engine.new(a_map)
a_game.play()
