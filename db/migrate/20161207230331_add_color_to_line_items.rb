class AddColorToLineItems < ActiveRecord::Migration
  def change
  	add_column :line_items, :color_id, :integer
  end
end
