class Size < ActiveRecord::Base
	belongs_to :gender
	belongs_to :style
	has_many :line_items
end
