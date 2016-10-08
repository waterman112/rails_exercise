class BooksController < ApplicationController
  def index
    @books = Book.all
    book = Book.first
    puts  "ooooo#{Publisher.where("id = ?",book.publisher_id)[0][:name]}ooooo"
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
    #puts "======#{  params  }==========="
    @book = Book.find params[:id]
  end

  def update
    #puts "===THIS IS UPDATE #{  params  }==============="
    #puts "===THIS IS UPDATE #{  params[:book]  }====="
    #puts "===THIS IS UPDATE3 #{ Publisher.where('id=?',params[:book][:id]).inspect  }========="
    @book = Book.find params[:id]
    @book.update params[:book]

    redirect_to books_path
  end

  def destroy
  end
end
