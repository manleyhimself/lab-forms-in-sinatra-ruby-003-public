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

    post '/songs/:id' do
      song = Song[params[:id]]

      song.update({
        title: params[:title],
        artist: params[:artist],
        album: params[:album],
        genre: params[:genre],
        length: params[:length]
      })

      redirect "/songs/#{song.id}"
    end

    get '/songs/:id/edit' do
      @song = Song[params[:id]]
      erb :'songs/edit'
    end
  end
end
