class FarmakosController < ApplicationController
  before_action :set_farmako, only: [:show, :edit, :update, :destroy]

  # GET /farmakos
  # GET /farmakos.json
  def index
    @farmakos = Farmako.all
  end

  def import
    Farmako.import(params[:file])
    redirect_to farmakos_url,notice:"Farmaka imported!"
  end

  # GET /farmakos/1
  # GET /farmakos/1.json
  def show
  end

  # GET /farmakos/new
  def new
    @farmako = Farmako.new
  end

  # GET /farmakos/1/edit
  def edit
  end

  # POST /farmakos
  # POST /farmakos.json
  def create
    @farmako = Farmako.new(farmako_params)

    respond_to do |format|
      if @farmako.save
        format.html { redirect_to @farmako, notice: 'Farmako was successfully created.' }
        format.json { render action: 'show', status: :created, location: @farmako }
      else
        format.html { render action: 'new' }
        format.json { render json: @farmako.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmakos/1
  # PATCH/PUT /farmakos/1.json
  def update
    respond_to do |format|
      if @farmako.update(farmako_params)
        format.html { redirect_to @farmako, notice: 'Farmako was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @farmako.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmakos/1
  # DELETE /farmakos/1.json
  def destroy
    @farmako.destroy
    respond_to do |format|
      format.html { redirect_to farmakos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmako
      @farmako = Farmako.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farmako_params
      params.require(:farmako).permit(:gbonoma, :emporikhon, :hmer_egris, :telos_egri)
    end
end
