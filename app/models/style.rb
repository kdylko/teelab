class Style < ActiveRecord::Base
  has_many :products
  has_many :sizetables
  has_many :sizes
  has_many :colors
end
