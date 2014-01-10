 class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]

  # GET /lines
  # GET /lines.json
  def index
    @pmu=Pmu.find(params[:pmu_id])
    @lines = @pmu.lines
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
    @pmu=Pmu.find(params[:pmu_id])
    @line=@pmu.lines.find(params[:id])
  end

  # GET /lines/new
  def new
    @pmu=Pmu.find(params[:pmu_id])
    @line =@pmu.lines.new
    @subs =Sub.all
  end


  # POST /lines
  # POST /lines.json
  def create
    @pmu=Pmu.find(params[:pmu_id])
    @line =@pmu.lines.new(line_params)
    @line.save
    redirect_to pmu_lines_path(@pmu)
  end

  # GET /lines/1/edit
  def edit

    @pmu=Pmu.find(params[:pmu_id])
    @line=@pmu.lines.find(params[:id])

  end


  # PATCH/PUT /lines/1
  # PATCH/PUT /lines/1.json
  def update
    @pmu=Pmu.find(params[:pmu_id])
    @line=@pmu.lines.find(params[:id])
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to pmu_lines_path(@pmu), notice: 'Phyto Protection  was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @line.destroy
    redirect_to pmu_lines_path
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:line).permit(:pmu_id, :sub_id, :date, :quantity, :reasoning, :operator, :tech_advisor)
    end
 end
