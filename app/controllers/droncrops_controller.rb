class DroncropsController < ApplicationController
  before_action :set_droncrop, only: [:show, :edit, :update, :destroy]

  # GET /droncrops
  # GET /droncrops.json
  def index
    @droncrops = Droncrop.all
  end

  def import
    Droncrop.import(params[:file])
    redirect_to droncrops_url,notice:"Dron Crop Table imported"
  end

  # GET /droncrops/1
  # GET /droncrops/1.json
  def show
  end

  # GET /droncrops/new
  def new
    @droncrop = Droncrop.new
  end

  # GET /droncrops/1/edit
  def edit
  end

  # POST /droncrops
  # POST /droncrops.json
  def create
    @droncrop = Droncrop.new(droncrop_params)

    respond_to do |format|
      if @droncrop.save
        format.html { redirect_to @droncrop, notice: 'Droncrop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @droncrop }
      else
        format.html { render action: 'new' }
        format.json { render json: @droncrop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /droncrops/1
  # PATCH/PUT /droncrops/1.json
  def update
    respond_to do |format|
      if @droncrop.update(droncrop_params)
        format.html { redirect_to @droncrop, notice: 'Droncrop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @droncrop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /droncrops/1
  # DELETE /droncrops/1.json
  def destroy
    @droncrop.destroy
    respond_to do |format|
      format.html { redirect_to droncrops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_droncrop
      @droncrop = Droncrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def droncrop_params
      params.require(:droncrop).permit(:kodikos, :code_fyta, :crops)
    end
end
