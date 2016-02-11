class SongsController < ApplicationController

  def index
    @songs = Song.all
  end


  
=begin
  def new
    @song = Song.new
  end


  def create
   if @song = Song.create(user_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    	@song = Song.find(params[:id])
  	end


  private

  def song_params
    params.require(:song).permit(:title, :release_date, :album, :artist_id)
  end
end
=end