class User < ApplicationRecord
  has_many :games
  has_many :cars, through: :game
end
