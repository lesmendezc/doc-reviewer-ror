class CommentsController < ApplicationController

    def index
        @paper = Paper.find(params[:paper_id])
        @comments = @paper.comments
    end
        
    def create
        @paper = Paper.find(params[:paper_id])
        @comment = @paper.comments.create(comment_params)
    end

    def comment_params
        params.require(:comment).permit(:commentary)
    end
end
