class BooksController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :edit, :update]

  def index
    @books = Book.all 
  end 

  def new 
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
  
    if @book.save
      redirect_to books_path, notice: "Book was created successfully."
    else
      render :new
    end
  end

  def destroy
    if @book.destroy
      redirect_to books_path
    else
      redirect_to @book, alert: 'Error'
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  private 

  def book_params
    params.require(:book).permit(:title, :author_id) 
  end

  def set_product
    @book = Book.find(params[:id])
  end

end
