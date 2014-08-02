class EpembashesController < ApplicationController
  before_action :set_epembash, only: [:show, :edit, :update, :destroy]

  # GET /epembashes
  # GET /epembashes.json
  def index
    @epembashes = Epembash.all
  end

  def import
     Epembash.import(params[:file])
     redirect_to epembashes_url,notice:"phi imported"
  end

  # GET /epembashes/1
  # GET /epembashes/1.json
  def show
  end

  # GET /epembashes/new
  def new
    @epembash = Epembash.new
  end

  # GET /epembashes/1/edit
  def edit
  end

  # POST /epembashes
  # POST /epembashes.json
  def create
    @epembash = Epembash.new(epembash_params)

    respond_to do |format|
      if @epembash.save
        format.html { redirect_to @epembash, notice: 'Epembash was successfully created.' }
        format.json { render action: 'show', status: :created, location: @epembash }
      else
        format.html { render action: 'new' }
        format.json { render json: @epembash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epembashes/1
  # PATCH/PUT /epembashes/1.json
  def update
    respond_to do |format|
      if @epembash.update(epembash_params)
        format.html { redirect_to @epembash, notice: 'Epembash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @epembash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epembashes/1
  # DELETE /epembashes/1.json
  def destroy
    @epembash.destroy
    respond_to do |format|
      format.html { redirect_to epembashes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epembash
      @epembash = Epembash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def epembash_params
      params.require(:epembash).permit(:farmako_id, :crop, :diast_pros, :comments)
    end
end
