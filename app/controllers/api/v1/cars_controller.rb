class Api::V1::CarsController < ApplicationController
  before_action :find_car, only: [:update]
  def index
    @car= Car.all
    render json: @car
  end

  def update
    @car.update(car_params)
    if @car.save
      render json: @car, status: :accepted
    else
      render json: { errors: @car.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def cars_params
    params.permit(:category, :speed, :health,:fire_rate)
  end

  def find_car
    @car = Car.find(params[:id])
  end
end
