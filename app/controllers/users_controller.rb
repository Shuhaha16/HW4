class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params["user"])
    @user.password = BCrypt::Password.create(params["user"]["password"])
    @user.save
    # redirect_to "/users/#{@user.id}"
    redirect_to "/places"
  end
end
