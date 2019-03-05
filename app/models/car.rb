class Car < ApplicationRecord
  has_many :games
  has_many :users, through: :game

end
