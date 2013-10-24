require 'sinatra/base'

module SuperSinatra
  class App < Sinatra::Base
    enable :sessions

    get '/' do
      erb :super_hero
    end

    post '/team' do
      session[:team] = params[:team]
      session[:motto] = params[:motto]
      session[:hero] = []
      session[:hero][0] = {}
      session[:hero][1] = {}
      session[:hero][2] = {}
      session[:hero][0][:name] = params[:hero]["0"][:name]
      session[:hero][0][:power] = params[:hero]["0"][:power]
      session[:hero][0][:bio] = params[:hero]["0"][:bio]
      session[:hero][1][:name] = params[:hero]["1"][:name]
      session[:hero][1][:power] = params[:hero]["1"][:power]
      session[:hero][1][:bio] = params[:hero]["1"][:bio]
      session[:hero][2][:name] = params[:hero]["2"][:name]
      session[:hero][2][:power] = params[:hero]["2"][:power]
      session[:hero][2][:bio] = params[:hero]["2"][:bio]

      redirect '/team'
    end

    get '/team' do
      erb :team
    end

  end
end