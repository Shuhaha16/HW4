class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where({ username: params["username"] })[0]
    if @user
      if BCrypt::Password.new(@user.password) == params["password"]
        session[:user_id] = @user.id
        flash[:notice] = "Welcome" 
        redirect_to "/places"
      else
        flash[:notice] = "Incorrect Password."
        redirect_to "/sessions/new"
      end
    else
      flash[:notice] = "User not found."
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Goodbye."
    redirect_to "/sessions/new"
  end
end
  