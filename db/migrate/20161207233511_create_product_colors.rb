class CreateProductColors < ActiveRecord::Migration
  def change
    create_table :product_colors do |t|
	  t.string :product_id
	  t.string :color_id
      t.timestamps null: false
    end
  end
end
