class UsersController < ApplicationController

  def index
    all = User.all
    render json: all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    if user
      render json: user
    else
      render print: "No one here"
    end
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def destroy
    user = User.find(params[:id])

    user.destroy
    render json: user
  end
end
