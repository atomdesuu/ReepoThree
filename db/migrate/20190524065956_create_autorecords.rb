class CreateAutorecords < ActiveRecord::Migration[5.2]
  def change
    create_table :autorecords do |t|
      t.decimal :avgambienttemp
      t.integer :barometricpressure
      t.integer :avgengineload
      t.integer :avrmp
      t.integer :fuelconsumption
      t.integer :avgenginetemp
      t.integer :hspeed
      t.integer :avgspeed
      t.integer :runtime
      t.references :automo, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
