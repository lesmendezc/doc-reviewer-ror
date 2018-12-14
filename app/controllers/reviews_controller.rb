class ReviewsController < ApplicationController
    def index
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @reviews = @paper.reviews
    end

    def new
        @event = Event.find(params[:event_id])
        @survey = @event.survey
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.new
    end

    def create
        @event = Event.find(params[:event_id])
        @survey = @event.survey
        @paper = @event.papers.find(params[:paper_id])
        @review = @paper.reviews.new(review_params)
        if @review.save
            ReviewMailer.review_notification(current_user, @paper.assingment, @paper).deliver
            redirect_to event_paper_review_path(@review)
        else
            render :new
        end
    end

    def show
        @review = Review.find(params[:id])
        @paper = @review.paper
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
        @review.update(is_edited: true, copy_id: @review.id)
        @paper.reviews.create(review_params)
        redirect_to event_paper_comments_path(@event)
    end

    private
    def review_params
        params.require(:review).permit(:paper_id, :user_id, :survey_id)
    end
end
