class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user.update(user_params)
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :sex, :birthday, :email, :phone_number, :langage, :currency, :description)
  end
end
