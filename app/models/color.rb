class Color < ActiveRecord::Base
	has_many :products
		has_many :line_items
	
end
