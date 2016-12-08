class Style < ActiveRecord::Base
  has_many :products
  has_many :genders
  has_many :sizetables
  has_many :sizes, through: :genders
  has_many :colors
end
