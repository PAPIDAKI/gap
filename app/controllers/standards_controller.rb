class StandardsController < ApplicationController
  before_action :set_standard, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @standards = Standard.all
    respond_with(@standards)
  end

  def show
    respond_with(@standard)
  end

  def new
    @standard = Standard.new
    respond_with(@standard)
  end

  def edit
  end

  def create
    @standard = Standard.new(standard_params)
    @standard.save
    respond_with(@standard)
  end

  def update
    @standard.update(standard_params)
    respond_with(@standard)
  end

  def destroy
    @standard.destroy
    respond_with(@standard)
  end

  private
    def set_standard
      @standard = Standard.find(params[:id])
    end

    def standard_params
      params.require(:standard).permit(:name)
    end
end
