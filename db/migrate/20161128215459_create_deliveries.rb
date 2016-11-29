class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
