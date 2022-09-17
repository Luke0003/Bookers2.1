class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
