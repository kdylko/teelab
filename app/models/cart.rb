class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	accepts_nested_attributes_for :line_items, :reject_if => lambda { |t| t['line_item'].nil? }

	def add_product(product_id, size_id)
	    current_item = line_items.find_by(product_id: product_id, size_id: size_id)
	    if current_item
	         current_item.quantity += 1
	    else
	         current_item = line_items.build(product_id: product_id, size_id: size_id)
	    end
	    current_item
 	end

  	def total_price
     	line_items.to_a.sum { |item| item.total_price }
  	end
  	def total_count
     	line_items.to_a.sum { |item| item.total_count }
  	end
end
