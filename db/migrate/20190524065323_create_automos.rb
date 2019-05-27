class CreateAutomos < ActiveRecord::Migration[5.2]
  def change
    create_table :automos do |t|
      t.text :name
      t.decimal :displacement
      t.integer :enginetype
      t.integer :cargocapacity
      t.text :drivenwheels
      t.text :vinnumber
      t.text :transmission
      t.text :engineconfiguration
      t.boolean :forcedinduction
      t.integer :passengerseats
      t.integer :urgency
      t.boolean :idle
      t.references :creator, foreign_key: true

      t.timestamps
    end
  end
end
