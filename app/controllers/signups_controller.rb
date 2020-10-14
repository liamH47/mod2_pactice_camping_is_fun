class SignupsController < ApplicationController
    before_action :find_signup, only: [:edit, :show, :update, :destroy]

  def index
    @signups = Signup.all
  end

  def show

  end

  def new
    @signup = Signup.new
  end

  def create 
    signup = Signup.create(signup_params)

    redirect_to camper_path(signup.camper)
  end





  private

  def find_signup
    @signup = Signup.find(params[:id])
  end

  def signup_params
    params.require(:signup).permit(:camper_id, :activity_id, :time)
  end
end
