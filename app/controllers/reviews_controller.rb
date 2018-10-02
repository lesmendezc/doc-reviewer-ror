class ReviewsController < ApplicationController
    def index
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @reviews = @paper.reviews
    end

    def new
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.new
    end

    def create
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.new(review_params)
        if @review.save
            redirect_to event_paper_comments_path(@event)
        else
            render :new
        end
    end

    def show
        @paper = Paper.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
    end

    def edit
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
    end

    def update
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.find(params[:id])
        @paper.reviews.create(review_params)
        redirect_to event_paper_comments_path(@event)
    end

    private
    def review_params
        params.require(:review).permit(:relevance, :problem_def, :general_def, :specific_def, :confidence, :general_evaluation, :personal_message)
    end
end
