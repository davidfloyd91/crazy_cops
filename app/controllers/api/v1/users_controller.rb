class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  def index
    @user= User.all
    render json: @user
  end
  def create
    @user = User.create(users_params)
    render json: @user, status: :ok
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: find_user, status: :ok
  end

  private

  def users_params
    params.permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end #end of UsersController class
