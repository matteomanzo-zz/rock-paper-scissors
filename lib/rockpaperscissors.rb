require 'sinatra/base'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }


  options = { rock: :scissors, paper: :rock, scissors: :paper }
  throws = options.keys

  get '/' do
    'Hello RPS!'
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
    @player_throws = params[:game].to_sym
    @computer_throws = throws.sample
    if @player_throws == @computer_throws
      @result = "tied"
    elsif @player_throws == options[@computer_throws]
      @result = "lose"
    else
      @result = "won"
    end
    erb :result
  end

  post '/admin_result' do
    @title = "And the winner is.."
    @player_throws = params[:game].to_sym
    @computer_throws = params[:game2].to_sym
    if @player_throws == @computer_throws
      @result = "tied"
    elsif @player_throws == options[@computer_throws]
      @result = "lose"
    else
      @result = "won"
    end
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
