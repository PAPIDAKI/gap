class GroupsController < ApplicationController

	def index
		#@groups=Group.all
		@groups=Group.where(user:current_user)
		@growers=Grower.all


		@pmus=Pmu.all
	end

	def show
		
		@group=Group.find(params[:id])
		#@group=Account.find_by  subdomain! request.subdomain


	end
	def edit
		@group=Group.find(params[:id])
	end

	def update
		@group=Group.find(params[:id])
		@group.update(group_params)
		redirect_to group_path(@group)

	end
	def new
		@group=Group.new

	end
	def create
		@group=Group.new(group_params)
		@group.user_id=current_user.id
		@group.save
		redirect_to @group
	end
	def destroy
		@group=Group.find(params[:id])
		@group.destroy
		redirect_to groups_path

	end

private
	def group_params
		params.require(:group).
		permit(:name,:address,:phone,:mobile)
	end

end
