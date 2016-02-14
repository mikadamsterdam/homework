class ArtistsController < ApplicationController

  def edit

  end

 def index
   @artists = Artist.all
end

   def new
    @artist = Artist.new
  end

  def create
    if @artist = Artist.create(artist_params)
      redirect_to root_path
    else
      render :new
    end
      end

  def show
    @artist = Artist.find(params[:id])
     @songs = @artist.songs
  end

  def destroy
    @artist = Artist.find(params[:id])
    if @artist.destroy
      redirect_to root_path
    else
      redirect_to @artist
    end
  end

 end
