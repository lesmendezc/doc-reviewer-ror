class AssingmentsController < ApplicationController
    def new
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @assingment = @paper.build_assingment
    end

    def create
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @assingment = @paper.create_assingment(assingment_params)
        if @assingment.save
            redirect_to event_papers_path(@event)
        else
            render :new
        end
    end

    def edit
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @assingment = Assingment.find(params[:id])
    end

    def update
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @assingment = Assingment.find(params[:id])
        @assingment.update(assingment_params)
        redirect_to event_papers_path(@event)
    end

    def show
        @event = Event.find(params[:event_id])
        @paper = @event.papers.find(params[:paper_id])
        @assingment = Assingment.find(params[:id])
    end

    private
    def assingment_params
        params.require(:assingment).permit(:director_id, :tutor_id, :relator_id)
    end
end
