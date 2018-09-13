class ReviewsController < ApplicationController
    def index
        @paper = Paper.find(params[:paper_id])
        @reviews = @paper.reviews
    end

    def new
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.build
    end

    def create
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.create(review_params)
        redirect_to paper_comments_path(@paper)
    end

    def show
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
    end

    def edit
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
    end

    def update
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
        @paper.reviews.create(review_params)
        redirect_to paper_comments_path(@paper)
    end

    private
    def review_params
        params.require(:review).permit(:relevance, :problem_def, :general_def, :specific_def, :confidence, :general_evaluation, :personal_message)
    end
end
