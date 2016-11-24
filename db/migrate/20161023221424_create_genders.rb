class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :name
      t.integer :style_id
      t.timestamps null: false
    end
  end
end
