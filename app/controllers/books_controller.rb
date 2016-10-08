class BooksController < ApplicationController
  def index
    @books = Book.all
    book = Book.first
    puts  "oooooINDEX#{Publisher.where("id = ?",book.publisher_id)[0].id}ooooo"
  end

  def show
  #  puts "====OOOOO#{  params  }OOOOOOOO===="
    @book = Book.find params[:id]
  end

  def create
  #  puts "oooCreateo#{  params  }oooooooo"
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
    @book = Book.find params[:id]
    @book.destroy

    redirect_to books_path
  end
end
