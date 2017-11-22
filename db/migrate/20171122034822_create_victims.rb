class CreateVictims < ActiveRecord::Migration[5.1]
  def change
    create_table :victims do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :ghost_id
      t.integer :place_id, null: false
    end
  end
end
