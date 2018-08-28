class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @review.questions.build
        # 2.times do
        #     2.times { question.answers.build }
        # end
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to @review, notice: "Revisión creada exitosamente."
        else
            render :new
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to @review, notice: "Revisión editada."
        else
            render :edit
        end
    end

    def destroy
        @review = Review.find(params[:id]).destroy
        redirect_to reviews_path, notice: "Revisión eliminada."
    end

    private
    def review_params
        params.require(:review).permit(:name, questions_attributes: [:id, :title, :answer_type, :_destroy, answers_attributes: [:id, :answer_content, :_destroy]])
    end
end