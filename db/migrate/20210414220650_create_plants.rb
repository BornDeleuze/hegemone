class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do | t |
      t.string :name
      t.string :latin_name
      t.string :notes
      t.string :date_planted
      t.integer :user_id
    end
  end
end
