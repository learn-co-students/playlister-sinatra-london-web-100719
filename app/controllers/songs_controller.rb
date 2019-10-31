class SongsController < ApplicationController

  # index => 
  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  # new
  get '/songs/new' do
    @artists = Artist.all
    @gennres = Genre.all
    erb :'/songs/new'
  end

  # create
  post '/songs' do
    # @song = Song.create(params[:song])

    # @artist = Artist.find_or_create_by(params[:artist])
    # @song.artist = @artist

    # params[:genres].each do |genre_id|
    #   @song.genres << Genre.find(genre_id)
    # end
    
    # @song.save

    @song = Song.create(params[:song])
    @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
    @song.genre_ids = params[:genres]
    @song.save

    redirect to "/songs/#{@song.slug}"
  end

  # show
  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    # binding.pry
    erb :'/songs/show'
  end

  # edit
  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/edit'
  end

  # update
  patch '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    @song.update(params[:song])
    @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
    @song.genre_ids = params[:genres]
    @song.save

    redirect to "/songs/#{@song.slug}"
  end
  # destroy
end