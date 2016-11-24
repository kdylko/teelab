class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name 
      t.string :g_name 
      t.integer :gender_id
      t.integer :style_id
         

      t.timestamps null: false
    end
  end
end
