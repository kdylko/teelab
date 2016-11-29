class CreateSizetables < ActiveRecord::Migration
  def change
    create_table :sizetables do |t|
      t.string :style_id
      t.string :size_name
      t.string :w_sh
      t.string :w_ch
      t.string :height

      t.timestamps null: false
    end
  end
end
