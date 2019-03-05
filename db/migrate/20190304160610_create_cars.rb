class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :category
      t.integer :speed
      t.integer :health
      t.integer :fire_rate

      t.timestamps
    end
  end
end
