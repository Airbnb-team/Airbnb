class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user_id == current_user.id
      user.update(user_params)
    end
  end

  def show
  end
end
