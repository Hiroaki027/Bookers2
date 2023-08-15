class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end
  
  def index
    @books = Book.all
  end

  def show
  end

 
  private
  
  def book_params
    params.require(:books).permit(:title, :body)
  end
end 