class MatchDataController < ApplicationController
  # GET /match_data
  # GET /match_data.json
  def index
    @match_data = MatchDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @match_data }
    end
  end

  # GET /match_data/1
  # GET /match_data/1.json
  def show
    @match_datum = MatchDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match_datum }
    end
  end

  # GET /match_data/new
  # GET /match_data/new.json
  def new
    @match_datum = MatchDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @match_datum }
    end
  end

  # GET /match_data/1/edit
  def edit
    @match_datum = MatchDatum.find(params[:id])
  end

  # POST /match_data
  # POST /match_data.json
  def create
    @match_datum = MatchDatum.new(params[:match_datum])

    respond_to do |format|
      if @match_datum.save
        format.html { redirect_to @match_datum, notice: 'Match datum was successfully created.' }
        format.json { render json: @match_datum, status: :created, location: @match_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @match_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /match_data/1
  # PUT /match_data/1.json
  def update
    @match_datum = MatchDatum.find(params[:id])

    respond_to do |format|
      if @match_datum.update_attributes(params[:match_datum])
        format.html { redirect_to @match_datum, notice: 'Match datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_data/1
  # DELETE /match_data/1.json
  def destroy
    @match_datum = MatchDatum.find(params[:id])
    @match_datum.destroy

    respond_to do |format|
      format.html { redirect_to match_data_url }
      format.json { head :no_content }
    end
  end
end
