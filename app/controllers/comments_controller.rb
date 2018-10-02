class CommentsController < ApplicationController

    def index
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @comments = @paper.comments
    end
        
    def create
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @comment = @paper.comments.create(comment_params)
        redirect_to event_paper_comments_path(@event)
    end

    def comment_params
        params.require(:comment).permit(:commentary)
    end
end
