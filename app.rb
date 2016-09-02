require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    $game = Game.new($player1, $player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $game.attack($player2)
    @hp = $player2.hp
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
