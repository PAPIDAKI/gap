class InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :edit, :update, :destroy]

  # GET /instructions
  # GET /instructions.json
  def index
    @clitem=Clitem.find(params[:clitem_id])
    @instructions = @clitem.instructions
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
  end

  # GET /instructions/new
  def new
    @clitem=Clitem.find(params[:clitem_id])
    @instruction = @clitem.instructions.new
  end

  # GET /instructions/1/edit
  def edit
    @clitem=Clitem.find(params[:clitem_id])
    @instruction=@clitem.instructions.find(params[:id])

  end

  # POST /instructions
  # POST /instructions.json
  def create
    @clitem=Clitem.find(params[:clitem_id])

    @instruction = @clitem.instructions.new(instruction_params)

    respond_to do |format|
      if @instruction.save
        format.html { redirect_to clitem_instructions_path(@clitem), notice: 'Instruction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @instruction }
      else
        format.html { render action: 'new' }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructions/1
  # PATCH/PUT /instructions/1.json
  def update

    @clitem=Clitem.find(params[:clitem_id])
    @instruction=@clitem.instructions.find(params[:id])
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to  clitem_path(@clitem), notice: 'Instruction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @clitem=Clitem.find(params[:clitem_id])
    @instruction=Instruction.find(params[:id])
    @instruction.delete
    redirect_to clitem_path(@clitem)
    
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instruction_params
      params.require(:instruction).permit(:description)
    end
end
