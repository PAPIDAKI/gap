class PpsController < ApplicationController
  before_action :set_pp, only: [:show, :edit, :update, :destroy]

  # GET /pps
  # GET /pps.json
  def index
    @pps = Pp.all
  end

  # GET /pps/1
  # GET /pps/1.json
  def show
  end

  # GET /pps/new
  def new
    @pp = Pp.new
  end

  # GET /pps/1/edit
  def edit
  end

  # POST /pps
  # POST /pps.json
  def create
    @pp = Pp.new(pp_params)

    respond_to do |format|
      if @pp.save
        format.html { redirect_to @pp, notice: 'Pp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pp }
      else
        format.html { render action: 'new' }
        format.json { render json: @pp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pps/1
  # PATCH/PUT /pps/1.json
  def update
    respond_to do |format|
      if @pp.update(pp_params)
        format.html { redirect_to @pp, notice: 'Pp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pps/1
  # DELETE /pps/1.json
  def destroy
    @pp.destroy
    respond_to do |format|
      format.html { redirect_to pps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pp
      @pp = Pp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pp_params
      params.require(:pp).permit(:quantity, :logentry_id)
    end
end
