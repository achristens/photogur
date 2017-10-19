class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    # this is traversing the way the info is saved, a key in a hash, which is a hash called user, and then the keys in user
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # Use _url in controllers!
      redirect_to root_url
    else
      render :new
    end

  end
end
