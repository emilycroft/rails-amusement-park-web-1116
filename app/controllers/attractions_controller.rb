class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def custom
    @user = User.find(current_user)
    @attraction = Attraction.find(params[:id])
    @ride = Ride.create(user_id: @user.id, attraction_id: @attraction.id)
    @ride.take_ride
    redirect_to user_path(session[:user_id])
  end

end
