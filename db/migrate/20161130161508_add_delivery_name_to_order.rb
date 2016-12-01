class AddDeliveryNameToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :delivery_price, :integer
  end
end
