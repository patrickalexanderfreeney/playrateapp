class SongsController < ApplicationController
  #before_action :the_song, only:[:edit, :show, :update, :destroy]
  
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    # @artist = Artist.find(params[:id])
    @review = Review.new
    @reviews = Review.all
  end

  def new
  end

  def create
  end

  

  def edit

  end

  def update
  end
  
  def destroy
    # @song.destroy
    # redirect_to songs_path
  end

  private

  # def the_song
  #   @song = Song.find(params[:id]
  # end

  # def song_params
  #   params.require(:song).permit(:genre, :title, :length)
  # end
end
