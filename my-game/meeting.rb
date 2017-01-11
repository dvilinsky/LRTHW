#class definition for meeting with the sorceress. Nothing too special. Perhaps
#I'll make some apparatus for having more than one character on the team, but
#for now I'm not because that would require a lot of refactoring
require "./player.rb"
require "./battle.rb"
class Meeting
  def initialize(player = nil)
    @player = player
  end

  def set_player(player)
    @player = player
  end

  def play
    display_intro
    resonse = $stdin.gets.chomp.downcase #no matter what the player says, she joins
    puts "'Very well, I suppose I'll join you. But before I leave these good people"
    puts "'I'll have to have you prove your worthiness with a test. Are you ready?' Good!"
    puts "With a flourish of her wand, you're transported to a vast plain."
    puts "You must fight to prove your worthiness! And it will be an enemy most fierce!"
    code = do_battle
    if code == "win"
      puts "Well done, young man, I shall join your team"
      #TODO: CREATE WAY TO HAVE TEAMS OF PLAYERS + NPC'S
    else
      puts "You are not worthy of my power. Come back to me when you have gained more strength."
    end
    return "Start" #for now, this is the end. It is looping the game forever
  end

  def display_intro
    puts "You walk into a tavern that resides on  the first floor of the building"
    puts "Sitting on a stool behind the bar is a young woman, sultry and fierce. "
    puts "With a nervous heart, you approach her. "
    puts "'Hello there young man. What can I do for you?'"
    puts "'Well, are you going to stare at me all day, or are you going to say something?'"
    print "> "
  end

  def do_battle
    fight = Battle.new(@player)
    fight.create_enemy(5) #some arbitrary number that ensures that Battle::easier is always > .5
    code = (fight.play == "Dead") ? "win" : "lose"
    return code
  end
end
