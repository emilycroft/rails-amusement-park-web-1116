class SessionsController < ApplicationController
  def show

<<<<<<< HEAD
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
=======
  def new
    
  end

  def create
    
  end

  def destroy

  end

>>>>>>> c98a09da926c4e6749935cd9db2f2616149efd9f
end
