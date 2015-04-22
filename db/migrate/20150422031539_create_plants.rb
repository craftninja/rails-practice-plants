class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :common_name, null: false
      t.string :genus_species, null: false
      t.timestamps null: false
    end
  end
end
