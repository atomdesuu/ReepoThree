class CreateQCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :q_creators do |t|
      t.text :name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
