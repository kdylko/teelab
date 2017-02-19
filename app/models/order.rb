class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	has_many :products, through: :line_items
	belongs_to :delivery
	validates :name, :address, :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	

	def add_line_items_from_cart(cart)
         cart.line_items.each do |item|

             line_items << item
		end
	end
	def order_count
		line_items.to_a.sum { |item| item.quantity}
	end
	def order_sum
		line_items.to_a.sum { |item| item.total_price}
	end
end
