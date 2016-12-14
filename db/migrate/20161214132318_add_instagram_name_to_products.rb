class AddInstagramNameToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :instagram_name, :string
  end
end
