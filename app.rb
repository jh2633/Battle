require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.create_game(player1, player2)
    redirect '/play'
  end

before do
  @game = Game.instance
end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    @game.switch
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
