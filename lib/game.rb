require_relative 'player'

class Game

attr_reader :player1, :player2, :current_player, :opponent

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
  end

  def attack(opponent)
    opponent.reduce_hp
  end

  def switch
    if @current_player == player1
      @current_player = player2
      @opponent = player1
    else
      @current_player = player1
      @opponent = player2
    end
  end
end
