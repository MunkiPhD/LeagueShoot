class StageScoresController < ApplicationController
  # GET /stage_scores
  # GET /stage_scores.json
  def index
    @stage_scores = StageScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stage_scores }
    end
  end

  # GET /stage_scores/1
  # GET /stage_scores/1.json
  def show
    @stage_score = StageScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stage_score }
    end
  end

  # GET /stage_scores/new
  # GET /stage_scores/new.json
  def new
    @stage_score = StageScore.new
    @shooters = Shooter.all
    @stages = Stage.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stage_score }
    end
  end

  # GET /stage_scores/1/edit
  def edit
    @stage_score = StageScore.find(params[:id])
  end

  # POST /stage_scores
  # POST /stage_scores.json
  def create
    @stage_score = StageScore.new(params[:stage_score])

    respond_to do |format|
      if @stage_score.save
        format.html { redirect_to @stage_score, notice: 'Stage score was successfully created.' }
        format.json { render json: @stage_score, status: :created, location: @stage_score }
      else
        format.html { render action: "new" }
        format.json { render json: @stage_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stage_scores/1
  # PUT /stage_scores/1.json
  def update
    @stage_score = StageScore.find(params[:id])

    respond_to do |format|
      if @stage_score.update_attributes(params[:stage_score])
        format.html { redirect_to @stage_score, notice: 'Stage score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stage_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stage_scores/1
  # DELETE /stage_scores/1.json
  def destroy
    @stage_score = StageScore.find(params[:id])
    @stage_score.destroy

    respond_to do |format|
      format.html { redirect_to stage_scores_url }
      format.json { head :no_content }
    end
  end
end
