class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :tittle
      t.integer :equipmentweight
      t.integer :passengercount
      t.text :destination
      t.text :details
      t.integer :urgency
      t.boolean :completed

      t.timestamps
    end
  end
end
