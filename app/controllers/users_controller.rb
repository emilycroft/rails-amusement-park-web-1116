class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if session[:user_id]
      @user
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create

    @user = User.create(user_params)
    session[:user_id] = @user.id

    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin, :password)
  end

end
