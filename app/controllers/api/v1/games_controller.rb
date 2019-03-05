class Api::V1::GamesController < ApplicationController
  before_action :find_game, only: [:update]
  def index
    @game= Game.all
    render json: @game
  end

  def create
    @game = Game.create(games_params)
    render json: @game,status: :ok
  end

  def update
    @game.update(game_params)
    if @game.save
      render json: @game, status: :accepted
    else
      render json: { errors: @game.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def games_params
    params.permit(:user_id,:car_id,:score)
  end

  def find_game
    @game = Game.find(params[:id])
  end
end #end of GamesController class
