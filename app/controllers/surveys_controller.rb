class SurveysController < ApplicationController
    def index
        @surveys = Survey.all
    end

    def show
        @survey = Survey.find(params[:id])
    end

    def new
        @survey = Survey.new
        @survey.questions.build
    end

    def create
        @survey = Survey.new(survey_params)
        if @survey.save
            redirect_to @survey
        else
            render :new
        end
    end

    def edit
        @survey = Survey.find(params[:id])
    end

    def update
        @survey = Survey.find(params[:id])
        if @survey.update(survey_params)
            redirect_to @survey
        else
            render :edit
        end
    end

    def destroy
        @survey = Survey.find(params[:id]).destroy
        redirect_to surveys_path
    end

    private
    def survey_params
        params.require(:survey).permit(:name, questions_attributes: [:id, :title, :answer_type, :_destroy, answers_attributes: [:id, :answer_content, :_destroy]])
    end
end
