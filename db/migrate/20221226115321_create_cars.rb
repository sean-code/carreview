class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.text :price 
      t.text :make 
      t.text :model 
      t.text :fuel_type 
      t.text :transmission 
      t.text :mileage
      t.text :engine_size
      t.text :year
      t.text :image 

      t.timestamps
    end
  end
end
