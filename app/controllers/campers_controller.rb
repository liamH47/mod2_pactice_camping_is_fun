class CampersController < ApplicationController
  before_action :find_camper, only: [:edit, :show, :update, :destroy]

  def index
    @campers = Camper.all
  end

  def show

  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.create(camper_params)
    if @camper.valid?
    redirect_to camper_path(@camper)
    end
  end




  private

  def find_camper
    @camper = Camper.find(params[:id])
  end

  def camper_params
    params.require(:camper).permit(:name, :age)
  end
end
