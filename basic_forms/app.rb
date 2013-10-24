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
      @song.artist = params[:name]
      @song.title = params[:song_name]
      @song.album = params[:album]
      @song.genre = params[:genre]
      @song.length = params[:song_length]
      @song.save
      redirect '/'
    end

  end
end
