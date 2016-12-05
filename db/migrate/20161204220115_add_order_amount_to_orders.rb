class AddOrderAmountToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :order_amount, :integer
  end
end
