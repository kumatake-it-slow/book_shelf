class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to @book, notice:"書籍を登録しました。"
  end

Private

  def book_params
    params.require(:book).permit(:title, :price, :publish_date, :description)
  end
end
