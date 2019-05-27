class AddCreatorToTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :creator, foreign_key: true
  end
end
