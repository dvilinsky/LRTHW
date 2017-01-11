#The controller class for the game. It updates the scenes and sends
#them to the console output. It keeps outputting scenes until it receives
#a code indicating that the users has won, or that it has died
require './player.rb'
require "./start_scene.rb"
require "./death.rb"
require "./town.rb"
require "./meeting.rb"
class Game
  #hash that maps scene codes to scene objects
  @@scenes = {"Town" => Town.new,
             #{}"Cave" => Cave.new,
             "Meeting" => Meeting.new,
             "Battle" => Battle.new,
             #"Generic" => GenericScene.new not sure if need this right now
             "Dead" => Death.new,
             "Start" => StartScene.new
            }

  def initialize
    @player = Player.new
    @current_scene = StartScene.new(@player)
  end

  def start_game()
    code = @current_scene.play #this function will eventually, once I write it, display output to the screen
    keep_playing(code)
  end

  #depending on what code it was given, displays the next scene
  #there is a lot of repeated code in this method, which I  don't like
  #For now, it is working though
  def keep_playing(code)
    puts "Code at beginning of keep_playing is #{code}"
    while code != "Dead"
      puts "Code at beginning of while loop is #{code}"
      next_scene = @@scenes[code]
      next_scene.set_player(@player)
      code = next_scene.play #this is really bad. This play function ends up doing two things
      puts "Code at end of while loop is #{code}"
    end
  end
end
