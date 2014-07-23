class PmusController < ApplicationController
  
  before_action :set_pmu, only: [:show, :edit, :update, :destroy]
  before_filter :load_grower
  def index
    @pmus=@grower.pmus

   

  end

  
  def show
        @pmu=@grower.pmus.find(params[:id])
        respond_to do |format|
          format.html
          format.pdf do
            pdf =Prawn::Document.new
            pdf.text "Hello World"
            pdf.text "Coloring in <color rgb='FF00FF'>both RGB</color> " +
 "<color c='100' m='0' y='0' k='0'>and CMYK</color>",
 :inline_format => true

pdf.text "This an external link to the " +
 "<u><link href='https://github.com/prawnpdf/prawn/wiki'>Prawn wiki" +
 "</link></u> and this is a link to the " +
 "<u><link anchor='Text Reference'>Text Reference</link></u> anchor",
 :inline_format => true

            send_data pdf.render
          end
        end

  end

  def new
    @pmu =@grower.pmus.new
  end

  def create
    @pmu=@grower.pmus.new(pmu_params)
    @pmu.save
    #redirect_to grower_pmus_path(@grower,@pmu.grower_id)
    redirect_to group_grower_path(@grower.group_id,@grower)
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
    #redirect_to grower_pmu_path(@grower,@pmu)
    redirect_to group_grower_path(@grower.group_id,@grower)
    
  end

  # DELETE /pmus/1
  # DELETE /pmus/1.json
  def destroy
    @pmu=Pmu.find(params[:id])
    @pmu.destroy
    #redirect_to grower_pmus_path(@grower)
    redirect_to group_grower_path(@grower.group_id,@pmu.grower_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmu
      @pmu = Pmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmu_params
      params.require(:pmu).permit(:produce, :variety, :location, :nearest_village, :address, :plantation_year, :number_of_trees, :area, :expected_production,:latitude,:longitude,:ggcert,:ehd,facility_ids:[])
    end

    def load_grower
    @grower=Grower.find(params[:grower_id])
    end
    

end
