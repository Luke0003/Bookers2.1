class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = Book.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

end
