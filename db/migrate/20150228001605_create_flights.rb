class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :to_airport_id
      t.integer :from_airport_id
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end 
