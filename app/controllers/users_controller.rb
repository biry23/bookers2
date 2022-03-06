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
    @usesr = Book.all
    @book = Book.new

  end


  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def list_params
    params.require(:book).permit(:image)
  end
end
