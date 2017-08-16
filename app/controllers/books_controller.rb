class BooksController < ApplicationController

  def index
    @books = Book.all.order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :date, :language, :country, :publisher, :meta_title, :meta_description, :permalink, :no_index)
  end

end
