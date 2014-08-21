class CreateParkingSpots < ActiveRecord::Migration
  def change
    create_table :parking_spots do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.float :lat
      t.float :lon
      t.string :side
      t.integer :spots
      t.string :type

      t.timestamps
    end
  end
end
