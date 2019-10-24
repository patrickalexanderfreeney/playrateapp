class ArtistsController < ApplicationController

  # before_action :the_artist, only:[:edit, :show, :update, :destroy]
  
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit 
  end

  def update
  end
  
  def destroy
    # @artist.destroy
    # redirect_to @artists
  end

  private

#   def the_artist
#     @artist = Artist.find(params[:id])
#   end

#   def artist_params
#     require.params.require(:artist).permit(:name)
#   end
end
