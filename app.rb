require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

	post '/names' do
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1].name
    @player2_name = session[:player2].name
    @player2_health = session[:player2].hp
    erb :play
  end

  post '/play' do
    @player1 = session[:player1]
    p '=======s=s=s==='
    p @player1
    @player2 = session[:player2]
  	@player1_name = @player1.name
    @player2_name = @player2.name
    p '==============='
    game = Game.new(@player1, @player2)
    # game.attack(@player2)
    @player2_health = @player2.hp
  	@attacked = true
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
