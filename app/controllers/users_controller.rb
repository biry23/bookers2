class UsersController < ApplicationController

  def create
    @user = User.find(params[:id])

  end


  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def index

  end


  def edit
  end

  def destroy
  end
end
