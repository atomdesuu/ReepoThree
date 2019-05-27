class RemoveDistancetravelledToAutorecord < ActiveRecord::Migration[5.2]
  def change
    remove_column :autorecords, :distancetravelled, :integer
    add_column :autorecords, :distancetravelled, :decimal
  end
end
