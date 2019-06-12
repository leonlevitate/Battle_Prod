require 'sinatra/base'

class Battle < Sinatra::Base
  # get '/' do
  #   'Testing insfrastructure working!'
  # end
  get '/' do
    # @name = params[:name]
    erb :player_form
  end

  post '/page1' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :player_land
  end

  run! if app_file ==$0
end
