class ReviewsController < ApplicationController 

    def index 
        @reviews = Review.all 
    end

    def new 
        @review = review.new
        @songs = song.all
    end

    def create

        Review.create

           redirect_to song_path
    end

    private

    def review_params
        params.require(review).permit(:user_id, :song_id, :content, :rating)
    end

end