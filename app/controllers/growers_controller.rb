class GrowersController < ApplicationController
	def index
		@group=Group.find(params[:group_id])
		@growers=@group.growers.all
	end

	def show
		@group=Group.find(params[:group_id])
		@grower=@group.find(params[:id])

	end

	def edit
		@group=Group.find(params[:group_id])
		@grower=Grower.find(params[:id])
	end
	def update
		@grower=Grower.find(params[:id])
		@grower.update(grower_params)
		redirect_to @grower
	end
	def new
		@group=Group.find(params[:group_id])
		@grower=@group.growers.new
	end
	def create
		@group=Group.find(params[:group_id])
		@grower=@group.growers.new(grower_params)
		@grower.save
		redirect_to group_growers_path(@group)

		
	end
					
		
		
	
	def destroy
		@grower=Grower.find(params[:id])
		@grower.destroy
		redirect_to growers_path
	end

private
	def grower_params
		params.require(:grower).permit(:name,:address,:mobile,:ggn)
	end
end
