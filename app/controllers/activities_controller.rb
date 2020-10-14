class ActivitiesController < ApplicationController
  

  before_action :find_activity, only: [:edit, :show, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show

  end




  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :age)
  end
end
