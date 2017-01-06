class UsersController < ApplicationController

  def show
    if session[:user_id]
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
    # flash[:notice]"Thanks for riding the #{@user.ride.attraction.name}!"
  end

  def new
    @user = User.new
  end

  def create
    
    @user = User.create(user_params)
    session[:user_id] = @user.id
<<<<<<< HEAD
    redirect_to user_path(@user)
=======

    redirect_to user_path(@user.id)
>>>>>>> c98a09da926c4e6749935cd9db2f2616149efd9f
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin, :password)
  end

end
