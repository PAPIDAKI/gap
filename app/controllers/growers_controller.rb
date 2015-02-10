class GrowersController < ApplicationController
	before_filter :load_group


	def index

		@growers=@group.growers if params[:group_id].present?
		#@growers=Grower.all

	end

	def show
		@grower=@group.growers.find(params[:id])
		@events=@grower.events.order(:date).reverse

	end

	def edit
		@grower=@group.growers.find(params[:id])

	end

	def update
		@grower=@group.growers.find(params[:id])
		@grower.update(grower_params)
		redirect_to group_grower_path(@group,@grower)
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
		@group=Group.find(params[:group_id]) if params[:group_id].present?
	end
end
