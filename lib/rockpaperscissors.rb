require 'sinatra/base'
require_relative 'game.rb'
require_relative 'player.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  game = Game.new

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  post '/single_player' do
    player = Player.new
    player.name = params[:name]
    @player_name = player.name
    session[:player] = player
    @player_name == "" || @player_name == nil ? (erb :single_player) : (erb :newgame)
  end

  get '/multiplayer' do
    erb :multiplayer
  end
 
  get '/newgame' do
    @title = "Let's play!"
    erb :newgame
  end

  post '/newgame' do
    erb :result
  end

  post '/result' do
    @title = "And the winner is.."
    player = session[:player]
    game.two_players? ? (@opponent = @player2_choice) : (@opponent = game.CPU)
    @player_name = player.name
    @player_choice = player.pick(params[:game])
    @end_match = game.result(@player_choice, @opponent)
    erb :result 
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
