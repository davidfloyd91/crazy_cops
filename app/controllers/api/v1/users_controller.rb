class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  def index
    @user= User.all
    render json: @user
  end
  def create
    @user = User.create(users_params)
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def users_params
    params.permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end #end of UsersController class
