class AddCaccessToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :caccess, :boolean
  end
end
