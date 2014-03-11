class ClitemsController < ApplicationController
  before_action :set_clitem, only: [:show, :edit, :update, :destroy]

  # GET /clitems
  # GET /clitems.json
  def index
    @clitems = Clitem.order("module ASC").page(params[:page]).per_page(20)

  end

  def import
    Clitem.import(params[:file])
    redirect_to clitems_path,notice:"Checklist items imported"
  end

  # GET /clitems/1
  # GET /clitems/1.json
  def show
    @clitems = Clitem.order("number ASC").page(params[:page]).per_page(1)


  end

  # GET /clitems/new
  def new
    @clitem = Clitem.new
  end

  # GET /clitems/1/edit
  def edit
  end

  # POST /clitems
  # POST /clitems.json
  def create
    @clitem = Clitem.new(clitem_params)

    respond_to do |format|
      if @clitem.save
        format.html { redirect_to @clitem, notice: 'Clitem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clitem }
      else
        format.html { render action: 'new' }
        format.json { render json: @clitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clitems/1
  # PATCH/PUT /clitems/1.json
  def update
    respond_to do |format|
      if @clitem.update(clitem_params)
        format.html { redirect_to @clitem, notice: 'Clitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clitems/1
  # DELETE /clitems/1.json
  def destroy
    @clitem.destroy
    respond_to do |format|
      format.html { redirect_to clitems_url }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clitem
      @clitem = Clitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clitem_params
      params.require(:clitem).permit(:number, :module, :area, :about, :for, :control_point, :compliance_criteria)
    end
end
