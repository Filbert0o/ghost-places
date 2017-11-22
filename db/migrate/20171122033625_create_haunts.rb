class CreateHaunts < ActiveRecord::Migration[5.1]
  def change
    create_table :haunts do |t|
      t.integer :ghost_id, null: false
      t.integer :place_id, null: false
    end
  end
end
