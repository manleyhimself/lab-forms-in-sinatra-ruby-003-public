require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      @songs = Song.all
      erb :'songs/index'
    end

    get '/songs/:id' do
      @song = Song[params[:id]]
      erb :'songs/show'
    end

    get '/songs/:id/edit' do
      @song = Song[params[:id]]
      erb :'songs/edit'
    end

    post '/songs/:id/edit' do
      @song = Song[params[:id]]
      @song.artist = params[:artist][:name]
      @song.title = params[:artist][:song_name]
      @song.album = params[:artist][:album]
      @song.genre = params[:artist][:genre]
      @song.length = params[:artist][:song_length]
      @song.save
      binding.pry
      redirect '/'
    end

  end
end
