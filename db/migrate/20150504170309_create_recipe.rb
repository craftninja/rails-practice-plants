class CreateRecipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.belongs_to :plant, null: false
      t.string :name, null: false
      t.string :part, null: false
      t.integer :purpose, null: false
      t.string :ingredients, null: false
      t.string :prep_time, null: false
      t.string :total_time, null: false
      t.text :directions, null: false
      t.timestamps null: false
    end
  end
end
