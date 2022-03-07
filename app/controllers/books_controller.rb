class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def new
    @book = Book.new
  end

  def create
  end

  def show
    @book = @Book.find(params[:id])
  end
end
