class CreateGhosts < ActiveRecord::Migration[5.1]
  def change
    create_table :ghosts do |t|
      t.string :name, null: false
      t.string :backstory
    end
  end
end
