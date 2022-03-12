class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  def create
    @user = User.find(params[:id])
    if @user.save
      redirect_to users_path
    else
      render :create
    end
  end




  def show
    @user = User.find(params[:id])
    @users = current_user
    @books = @user.books
    @book = Book.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end


  def edit
    @user = User.find(params[:id])
  end


  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to user_path(current_user) unless @user == current_user
  end
end
