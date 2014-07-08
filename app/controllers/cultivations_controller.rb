class CultivationsController < ApplicationController
  before_action :set_cultivation, only: [:show, :edit, :update, :destroy]

  # GET /cultivations
  # GET /cultivations.json
  def index
    @grower=Grower.find(params[:grower_id])
    @cultivations = @grower.cultivations
  end

  # GET /cultivations/1
  # GET /cultivations/1.json
  def show
  end

  # GET /cultivations/new
  def new
    @cultivation = Cultivation.new
  end

  # GET /cultivations/1/edit
  def edit
  end

  # POST /cultivations
  # POST /cultivations.json
  def create
    @cultivation = Cultivation.new(cultivation_params)

    respond_to do |format|
      if @cultivation.save
        format.html { redirect_to @cultivation, notice: 'Cultivation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cultivation }
      else
        format.html { render action: 'new' }
        format.json { render json: @cultivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cultivations/1
  # PATCH/PUT /cultivations/1.json
  def update
    respond_to do |format|
      if @cultivation.update(cultivation_params)
        format.html { redirect_to @cultivation, notice: 'Cultivation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cultivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cultivations/1
  # DELETE /cultivations/1.json
  def destroy
    @cultivation.destroy
    respond_to do |format|
      format.html { redirect_to cultivations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cultivation
      @cultivation = Cultivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cultivation_params
      params.require(:cultivation).permit(:date, :note, :operator, :workers_num)
    end
end
