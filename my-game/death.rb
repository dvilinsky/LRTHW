#Game over. Death. Doesn't return any codes to the game.rb game-controller
class Death
  def set_player(player)
    @player = player
  end

  def play
    puts "Game over!  "
  end
end
