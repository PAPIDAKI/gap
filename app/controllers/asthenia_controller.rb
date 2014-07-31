class AstheniaController < ApplicationController
  before_action :set_asthenium, only: [:show, :edit, :update, :destroy]

  # GET /asthenia
  # GET /asthenia.json
  def index
    @asthenia = Asthenium.all
  end

  def import
    Asthenium.import(params[:file])
    redirect_to asthenia_url,notice:"Diseases (Asthenias) imported ! "
  end

  # GET /asthenia/1
  # GET /asthenia/1.json
  def show
  end

  # GET /asthenia/new
  def new
    @asthenium = Asthenium.new
  end

  # GET /asthenia/1/edit
  def edit
  end

  # POST /asthenia
  # POST /asthenia.json
  def create
    @asthenium = Asthenium.new(asthenium_params)

    respond_to do |format|
      if @asthenium.save
        format.html { redirect_to @asthenium, notice: 'Asthenium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @asthenium }
      else
        format.html { render action: 'new' }
        format.json { render json: @asthenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asthenia/1
  # PATCH/PUT /asthenia/1.json
  def update
    respond_to do |format|
      if @asthenium.update(asthenium_params)
        format.html { redirect_to @asthenium, notice: 'Asthenium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asthenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asthenia/1
  # DELETE /asthenia/1.json
  def destroy
    @asthenium.destroy
    respond_to do |format|
      format.html { redirect_to asthenia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asthenium
      @asthenium = Asthenium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asthenium_params
      params.require(:asthenium).permit(:code_asten, :astenia, :nastenia)
    end
end
