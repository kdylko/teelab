class Gender < ActiveRecord::Base
	has_many :sizes
	belongs_to :style
end
