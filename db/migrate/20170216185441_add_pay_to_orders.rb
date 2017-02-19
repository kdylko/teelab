class AddPayToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :pay, :string
  end
end
