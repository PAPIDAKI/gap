class LogentriesController < ApplicationController
  before_action :set_logentry, only: [:show, :edit, :update, :destroy]
  before_action :set_grower
 
  def index

    @logentries = @grower.logentries
  end

  # GET /logentries/1
  # GET /logentries/1.json
  def show
    @grower=Grower.find(params[:grower_id])
    @pmus=@grower.pmus

  end

  # GET /logentries/new
  def new
    @logentry = Logentry.new
  end

  # GET /logentries/1/edit
  def edit

  end

  # POST /logentries
  # POST /logentries.json
  def create

    @grower=Grower.find(1)
    @logentry = @grower.logentries.new(logentry_params)

    respond_to do |format|
      if @logentry.save
        format.html { redirect_to  group_grower_path, notice: 'Logentry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @logentry }
      else
        format.html { render action: 'new' }
        format.json { render json: @logentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logentries/1
  # PATCH/PUT /logentries/1.json
  def update
    respond_to do |format|
      if @logentry.update(logentry_params)
        format.html { redirect_to @logentry, notice: 'Logentry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @logentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logentries/1
  # DELETE /logentries/1.json
  def destroy
    @logentry.destroy
    respond_to do |format|
      format.html { redirect_to logentries_url }
      format.json { head :no_content }
    end
  end

  private
    def set_grower
    @grower=Grower.find(params[:grower_id])
    end

    def set_logentry
      @logentry = Logentry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logentry_params
      params.require(:logentry).permit(:date, :note, :operator, :workers,pmu_ids:[])
    end
end
