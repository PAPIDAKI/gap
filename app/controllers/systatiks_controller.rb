class SystatiksController < ApplicationController
  before_action :set_systatik, only: [:show, :edit, :update, :destroy]

  # GET /systatiks
  # GET /systatiks.json
  def index
    @systatiks = Systatik.all
  end

  def import 
     
    Systatik.import(params[:file])
    redirect_to systatiks_url,notice:'Systatika Imported'
  end

  # GET /systatiks/1
  # GET /systatiks/1.json
  def show
  end

  # GET /systatiks/new
  def new
    @systatik = Systatik.new
  end

  # GET /systatiks/1/edit
  def edit
  end

  # POST /systatiks
  # POST /systatiks.json
  def create
    @systatik = Systatik.new(systatik_params)

    respond_to do |format|
      if @systatik.save
        format.html { redirect_to @systatik, notice: 'Systatik was successfully created.' }
        format.json { render action: 'show', status: :created, location: @systatik }
      else
        format.html { render action: 'new' }
        format.json { render json: @systatik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /systatiks/1
  # PATCH/PUT /systatiks/1.json
  def update
    respond_to do |format|
      if @systatik.update(systatik_params)
        format.html { redirect_to @systatik, notice: 'Systatik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @systatik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /systatiks/1
  # DELETE /systatiks/1.json
  def destroy
    @systatik.destroy
    respond_to do |format|
      format.html { redirect_to systatiks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_systatik
      @systatik = Systatik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def systatik_params
      params.require(:systatik).permit(:kodikos, :onomadron)
    end
end
