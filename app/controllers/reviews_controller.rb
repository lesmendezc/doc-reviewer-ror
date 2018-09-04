class ReviewsController < ApplicationController
    def index
        @paper = Paper.find(params[:paper_id])
        @reviews = @paper.reviews
    end

    def new
        @paper = Paper.find(params[:paper_id])
        # @review = Review.new
    end

    private
    def review_params
        params.require(:review).permit(:relevance)
    end
end
