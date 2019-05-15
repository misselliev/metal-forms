# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
    render :new
  end

  def update
    @user = User.find params[:id]

    if @user.update user_params
      redirect_to new_user_path
    else
      render :new
      puts @user.errors.messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
    # params.permit(:username, :email, :password)
  end
end
