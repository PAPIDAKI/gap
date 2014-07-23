class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_filter :load_grower


	def index
		
		case params[:scope]
		when 'evferts'
			@events=@grower.evferts
		when 'evcults'
			@events=@grower.evcults
		when 'evphytos'
			@events=@grower.evphytos
		else
			@events=@grower.events.order(:date).reverse
		end

	end

	def new
		
		@event=@grower.events.new
		@event.type=params[:type]
		@event.operator=@grower.name
		@event.pmu_ids=@grower.pmu_ids


	end


	def create
		@event=@grower.events.new(new_event_params)
    respond_to do |format|
      if @event.save
        #format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.html{redirect_to group_grower_path(@grower.group_id,@grower)}

      else
        format.html { render action: 'new' }
      end
    end

	end

	def show

	end

	def edit 
		  @event=@grower.events.find(params[:id])
	end

	def update
	    @event=@grower.events.find(params[:id])
	    @event.update(edit_event_params)
	   # redirect_to group_grower_path(@grower.group_id,@grower)
	    redirect_to grower_events_path(@grower)
        end


	def destroy
    @event=Event.find(params[:id])
    @event.destroy
     redirect_to :back
      	end

    


 private


 	def load_grower
      @grower=Grower.find(params[:grower_id])
        end

    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
    def event_classes
      ['evcults','evfrts','evphytos']
    end

    def event_class
    	type.constantize if type.in? race_classes
    end

    def event_type
       params[:type].constantize
    end

    def new_event_params
    	  params.require(:event).
    	  permit(:type,:date,:note,:fileds,:operator,pmu_ids:[])
    end

    def  edit_event_params
    	  type=@event.type
	      params.require(type.underscore.to_sym).
	      permit(:type,:date,:note,:fileds,:operator,pmu_ids:[])
    end

     def ad_types
         [MyType, MyType2]
     end

     def ad_type
          params[:type].constantize if params[:type].in? ad_types
     end




    

end
