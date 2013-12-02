class PmusController < ApplicationController
  
  before_action :set_pmu, only: [:show, :edit, :update, :destroy]
  before_filter :load_grower

  def index
    @pmus=@grower.pmus
  end

  
  def show
        @pmu=@grower.pmus.find(params[:id])
  end

  def new
    @pmu =@grower.pmus.new
  end
  def create
    @pmu=@grower.pmus.new(pmu_params)
    @pmu.save
    redirect_to grower_pmus_path(@grower)
  end

  # GET /pmus/1/edit
  def edit
        @pmu=Pmu.find(params[:id])

  end

  # POST /pmus
  # POST /pmus.json
  

  # PATCH/PUT /pmus/1
  # PATCH/PUT /pmus/1.json
  def update
    @pmu=Pmu.find(params[:id])
    @pmu.update(pmu_params)
    redirect_to grower_pmus_path(@grower)
  end

  # DELETE /pmus/1
  # DELETE /pmus/1.json
  def destroy
    @pmu=Pmu.find(params[:id])
    @pmu.destroy
    redirect_to grower_pmus_path(@grower)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmu
      @pmu = Pmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmu_params
      params.require(:pmu).permit(:produce, :variety, :location, :nearest_village, :address, :plantation_year, :number_of_trees, :area, :expected_production)
    end

    def load_grower
    @grower=Grower.find(params[:grower_id])
    end

end
