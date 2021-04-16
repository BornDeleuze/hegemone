class ChangePlantsGardenIdToGardenName < ActiveRecord::Migration[5.2]
  def change      
    rename_column :plants, :garden_id, :garden_name
    change_column :plants, :garden_name, :string
  end
end
