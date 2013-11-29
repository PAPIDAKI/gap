class GrowersController < ApplicationController
	before_filter :load_group


	def index
		@growers=@group.growers
		
	end

	def show
		@grower=@group.growers.find(params[:id])




	end

	def edit
		@grower=Grower.find(params[:id])

	end
	def update
		@grower=Grower.find(params[:id])
		@grower.update(grower_params)
		redirect_to group_growers_path
	end
	def new
		@grower=@group.growers.new
	end
	def create
		@grower=@group.growers.new(grower_params)
		@grower.save
		redirect_to group_growers_path(@group)

		
	end
					
		
		
	
	def destroy
		@grower=Grower.find(params[:id])
		@grower.destroy
		redirect_to group_growers_path
	end

private
	def grower_params
		params.require(:grower).permit(:name,:address,:mobile,:ggn)
	end

	def load_group
		@group=Group.find(params[:group_id])
	end
end
