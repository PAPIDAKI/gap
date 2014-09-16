class PpsController < ApplicationController
	before_filter :load_crop
  def index
  	@farmakos=@crop.farmakos.all
  	@farmakos.sort! { |a,b| a.gbonoma.downcase <=> b.gbonoma.downcase}

  	@farmako=@farmakos.find(params[:crop_id])
  	#@epembash=@farmako.epembash
  end



  private
  def load_crop
  	@crop=Crop.find(params[:crop_id])

  end

end
