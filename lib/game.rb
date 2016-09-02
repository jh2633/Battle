require_relative 'player'

class Game

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def attack(opponent)
    opponent.reduce_hp
  end
end
