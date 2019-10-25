class ReviewsController < ApplicationController 

    def index 
        @reviews = Review.all 
    end

    def new 
        @review = Review.new
        @songs = Song.all
    end

    def create
        # byebug
        @user_id = session[:user_id]
        @review = Review.create(review_params)
        
        # byebug
        @song = Song.find(params[:review][:song_id])
        redirect_to song_path(@song)
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :song_id, :content, :rating)
    end

end