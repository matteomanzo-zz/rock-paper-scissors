require 'sinatra/base'
require_relative 'game.rb'
require_relative 'player.rb'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  game = Game.new
  player = Player.new("Matte")

  get '/' do
    erb :index
  end

  post '/' do
    @player = params[:name]
    session[:player] = @player
    erb :index
  end
 
  get '/newgame' do
    @title = "Let's play!"
    erb :newgame
  end

  post '/newgame' do
    erb :result
  end

  get '/admin' do
    @title = "testing"
    erb :admin
  end

  post '/admin' do
    erb :admin_result
  end

  post '/result' do
    @title = "And the winner is.."  
    @player_choice = player.pick(params[:game])
    @end_match = game.result(@player_choice)
    @computer = game.computer_choice
    erb :result 
  end

  post '/admin_result' do
    @title = "And the winner is.."
    @player_throws = params[:game].to_sym
    @computer_throws = params[:game2].to_sym
    if !throws.include?(@player_throws) || @player_throws == "" || @computer_throws == ""
      @result = "error"
    elsif @player_throws == @computer_throws
      @result = "tied"
    elsif @player_throws == options[@computer_throws]
      @result = "lose"
    elsif @computer_throws == options[@player_throws]
      @result = "won"
    end
    erb :admin_result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
