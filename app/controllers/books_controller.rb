class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(user_id)
  end
  
  def index
    @books = Book.all
    @users = User.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

 
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end 