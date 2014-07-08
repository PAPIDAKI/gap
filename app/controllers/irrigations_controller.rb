class IrrigationsController < ApplicationController
 def index
 	#@pmu=Pmu.find(params[:pmu_id])
 	#@irrigations=@pmu.irrigations
  @grower=Grower.find(params[:id])
  @irrigations=@grower.irrigations
 end

 def new
 	@pmu=Pmu.find(params[:pmu_id])
 	@irrigation=@pmu.irrigations.new
 end

 def create
 	@pmu=Pmu.find(params[:pmu_id])
 	@irrigation=@pmu.irrigations.new(irrigation_params)
 	if @irrigation.save
 		redirect_to pmu_irrigations_path(@pmu),
 			notice: "A new Irrigation has been added"
    else
 	   render :new
 	end
 end

 def edit
    @pmu=Pmu.find(params[:pmu_id])
    @irrigation=@pmu.irrigations.find(params[:id])
 end

 def update
    @pmu=Pmu.find(params[:pmu_id])
    @irrigation=@pmu.irrigations.find(params[:id])
    respond_to do |format|
      if @irrigation.update(irrigation_params)
        format.html { redirect_to pmu_irrigations_path(@pmu), notice: 'Irrigation  was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @irrigation.errors, status: :unprocessable_entity }
      end
    end
 end

  def destroy
  	@irrigation=Irrigation.find(params[:id])
    @irrigation.destroy
    redirect_to pmu_irrigations_path
    
  end




private
def irrigation_params
	params.require(:irrigation).permit(:date,:quantity,:duration,:operator)

end


end
