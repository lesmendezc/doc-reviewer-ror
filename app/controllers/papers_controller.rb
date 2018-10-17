class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /papers
  # GET /papers.json
  def index
    @event = Event.find(params[:event_id])
    @papers = @event.papers
    @papers_by_user = current_user.papers
  end

  # GET /papers/1
  # GET /papers/1.json
  def show
    @event = Event.find(params[:event_id])
    @paper = @event.papers.find(params[:id])
    @assingment = @paper.assingment
  end

  # GET /papers/new
  def new
    @event = Event.find(params[:event_id])
    @paper = @event.papers.new
  end

  # GET /papers/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @paper = @event.papers.find(params[:id])
  end

  # POST /papers
  # POST /papers.json
  def create
    @event = Event.find(params[:event_id])
    @paper = @event.papers.new(paper_params)

    # respond_to do |format|
      if @paper.save
        redirect_to event_papers_path(@event)
        # format.html { redirect_to @paper, notice: 'Paper was successfully created.' }
        # format.json { render :show, status: :created, location: @paper }
      else
        render 'new'
        # format.html { render :new }
        # format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /papers/1
  # PATCH/PUT /papers/1.json
  def update
    @event = Event.find(params[:event_id])
    # respond_to do |format|
      if @event.papers.update(paper_params)
        redirect_to event_papers_path(@event)
        # format.html { redirect_to @paper, notice: 'Paper was successfully updated.' }
        # format.json { render :show, status: :ok, location: @paper }
      else
        format.html { render :edit }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    # end
  end

  # DELETE /papers/1
  # DELETE /papers/1.json
  def destroy
    @paper.destroy
    respond_to do |format|
      format.html { redirect_to papers_url, notice: 'Paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def list_all
    @papers = Paper.all
  end

  def my_documents
    @papers = current_user.papers
  end

  def list_assigned_tutor
    @papers = Paper.all
  end

  def list_assigned_relator
    @papers = Paper.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper
      @paper = Paper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paper_params
      params.require(:paper).permit(:title, :resume, :general_purpose, :specific_purpose, :problem_definition, :tag_list, :pdf_file, :user_id, :event_id, :google_docs_link)
    end
end
