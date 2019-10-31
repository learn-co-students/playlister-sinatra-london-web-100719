class SongsController < ApplicationController

    get "/songs" do  
        @songs = Song.all
        erb :"songs/index"
    end 

    get "/songs/new" do   
        @artists = Artist.all 
        @genres = Genre.all  
       # binding.pry
        erb :"songs/new"
    end  

    get "/songs/:slug" do
        @song = Song.find_by_slug(params[:slug])
        # binding.pry
        erb :"songs/show"
    end 


    post "/songs" do 
        #binding.pry
        @song = Song.create(params[:song])
        @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
        @song.genres << Genre.find_by(name: params[:genres])
        @song.save

        redirect "/songs/#{@song.slug}"
    end 

    get "/songs/:slug/edit" do 
        #binding.pry
        @song = Song.find_by_slug(params[:slug])
        @genres = Genre.all 
        @artists = Artist.all
        erb :"songs/edit"
    end

    patch "/songs/:slug" do 
        # binding.pry
        @song = Song.find_by_slug(params[:slug])
        @song.update(params[:song])
        @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
        @song.genres << Genre.find_by(name: params[:genres])
        @song.save 
        #binding.pry
        redirect "/songs/#{@song.slug}"
    end
 



end 