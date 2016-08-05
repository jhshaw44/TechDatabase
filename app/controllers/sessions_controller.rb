class SessionsController < ApplicationController
  
  def new 
  end
  
  def create
  @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to root_url, notice: "Logged in!"
  else
    flash.now.alert = "Email or password is invalid."
    end 
  end
  
   def show
    @session=session.find_by_user_id(params[:user_id])
  end

  def destroy
  session[:user_id] = nil 
  redirect_to root_url, notice: 'Logged out!'

  end
  
end
