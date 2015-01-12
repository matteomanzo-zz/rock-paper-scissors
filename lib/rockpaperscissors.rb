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

  post '/' do
    player = Player.new
    player.name = params[:name]
    @player_name = player.name
    session[:player] = player
    erb :index
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
    @player_name = player.name
    @player_choice = player.pick(params[:game])
    @end_match = game.result(@player_choice)
    @computer = game.computer_choice
    erb :result 
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
