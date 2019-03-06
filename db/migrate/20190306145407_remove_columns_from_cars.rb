class RemoveColumnsFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :speed
    remove_column :cars, :health
    remove_column :cars, :fire_rate 
  end
end
