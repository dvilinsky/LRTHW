module MyStuff
  def MyStuff.orange
    puts "This is an orange"
  end

  TANGERINE= "tangerinesese"
end


puts MyStuff::TANGERINE

class Stuff
  def initialize()
    @tangerine = "Tangeeerrrinneess"
  end

  attr_reader :tangerine

  def apple()
    puts "This prints an apple"
  end
end

x = Stuff.new()
x.apple()
puts x.tangerine

class Song
  #class' constructor
  #parameter: an array where each item is a song lyric. Hopefully
  #sucks is a boolean value if the song is good or bad
  def initialize(lyrics, sucks = false)
    init(lyrics, sucks)
  end

  #not sure if this is the best way to allow for an "overload" constructor
  def init(lyrics, sucks)
    @lyric = lyrics
    @sucks = sucks
  end

  #this is how you do getters and setters in ruby. That's kind of cool
  attr_reader :lyric
  attr_writer :lyric
  attr_reader :sucks

  def sing_for_me
    @lyric.each{|l| puts l}
  end


end

bday = Song.new([ "Happy birthday to you",
  "I don't want to get sued",
  "So, it's time to stop"
])

bull = Song.new([ "They rally around the family",
  "With pockets full of shells"
])

bday.sing_for_me
bull.sing_for_me

song = ["This is an array of strings", "you could be really clever and sing it"]

lame = Song.new(song, true)
lame.sing_for_me
lame.lyric = ["dd"]
puts lame.lyric
puts lame.sucks
