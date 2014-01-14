class FertilizersController < ApplicationController
  before_action :set_fertilizer, only: [:show, :edit, :update, :destroy]

  # GET /fertilizers
  # GET /fertilizers.json
  def index
    @pmu=Pmu.find(params[:pmu_id])
    @fertilizers = @pmu.fertilizers.all
  end

  # GET /fertilizers/1
  # GET /fertilizers/1.json
  def show
  end

  # GET /fertilizers/new
  def new
    @pmu=Pmu.find(params[:pmu_id])
    @fertilizer = @pmu.fertilizers.new
  end

  # GET /fertilizers/1/edit
  def edit
     @pmu=Pmu.find(params[:pmu_id])
    @fertilizer=@pmu.fertilizers.find(params[:id])
  end

  # POST /fertilizers
  # POST /fertilizers.json
  def create
     @pmu=Pmu.find(params[:pmu_id])
    @fertilizer = @pmu.fertilizers.new(fertilizer_params)

    respond_to do |format|
      if @fertilizer.save
        format.html { redirect_to pmu_fertilizers_path(@pmu), notice: 'Fertilizer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fertilizer }
      else
        format.html { render action: 'new' }
        format.json { render json: @fertilizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fertilizers/1
  # PATCH/PUT /fertilizers/1.json
  def update
    respond_to do |format|
      if @fertilizer.update(fertilizer_params)
        format.html { redirect_to pmu_fertilizers_path, notice: 'Fertilizer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fertilizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fertilizers/1
  # DELETE /fertilizers/1.json
  def destroy
    @pmu=Pmu.find(params[:pmu_id])
    @fertilizer=Fertilizer.find(params[:id])
    @fertilizer.destroy
    redirect_to pmu_fertilizers_path

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fertilizer
      @fertilizer = Fertilizer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fertilizer_params
      params.require(:fertilizer).permit(:pmu_id, :sub_id, :date, :quantity, :reasoning, :operator, :tech_advisor)
    end
end
