class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
  end

  def create
    @book = Book.new params[:book]
    @book.save

    redirect_to @book
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
