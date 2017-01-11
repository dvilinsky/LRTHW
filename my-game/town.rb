#class definition of the town in this game. In an ideal world there would
#be more than one town, and this might be a superclass (or module if we're
#trying to avoid inheritance) with some common functionality.
require "./player.rb"

class Town
  def initialize(player=nil)
    @player = player
  end

  def set_player(player)
    @player = player
  end

  def play
    display_intro
    loop do
      inquire = $stdin.gets.chomp.downcase
      r = rand(0...6)
      puts sayings[r]
      print "> "
      break if r == 1
    end
    puts "Now that you know what to do, do you dare meet with someone so powerful and deadly?"
    print "> "
    decision = $stdin.gets.chomp.downcase
    code = (decision.include? "yes") ? "Meeting" : "Generic"
    return code
  end

  def display_intro
    puts "Having traveled east over hill and over dale, you find hidden "
    puts "away in the woods a quaint little hamlet. The townspeople seem "
    puts "friendly enough. The go about their business, wandering into shops "
    puts "and taverns. A jovial attitude fills the air. Yet with all the evil"
    puts "abounding through the land, you wonder why the town could be so buoyant."
    puts "Perhaps the citizens know something?"
    puts "\n"
    print "> "
  end

  #returns an array of statements that the "npc's" might tell our hero
  def sayings
    sentences = [ "Hey little goldfish, where're you going to ?",
      "Oh, you must be looking for Misty! She lives in the hall in the town center.",
      "Ho-hum, another boring day on the job!.",
      "Ever since that kind sorceress came to town, things have just seemed a little bit brighter.",
      "And I would have gotten away with it, if it wasn't for you meddling kids!"
    ]
    return sentences
  end
end
