require 'sinatra/base'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }

  get '/' do
    'Hello RPS!'
    erb :index
  end

  post '/' do
    @player = params[:name]
    session[:player] = @player
    erb :index
  end
 
  # start the server if ruby file executed directly
  run! if app_file == $0
end
