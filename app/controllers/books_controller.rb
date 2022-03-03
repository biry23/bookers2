class BooksController < ApplicationController
  def index
    @books = Book.all
    
  end

  def new
    @book = @Books
  end

  def create
  end

  def show
    @book = @Book.find(params[:id])
    
  end

end
