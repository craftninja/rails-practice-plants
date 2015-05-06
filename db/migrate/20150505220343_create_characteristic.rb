class CreateCharacteristic < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.belongs_to :plant, null: false
      t.belongs_to :property, null: false
      t.string :part, null: false
      t.string :preparation, null: false
      t.timestamps null: false
    end
  end
end
