class UsersController < ApplicationController

  def index
    all = User.all
    render json: all
  end

  def create
    render json: params
  end

  def show
    render json: params
  end



end
