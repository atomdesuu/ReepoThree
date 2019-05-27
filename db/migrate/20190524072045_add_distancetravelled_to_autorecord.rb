class AddDistancetravelledToAutorecord < ActiveRecord::Migration[5.2]
  def change
    add_column :autorecords, :distancetravelled, :integer
  end
end
