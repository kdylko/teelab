class Style < ActiveRecord::Base
  has_many :products
  has_many :genders
  has_many :sizes, through: :genders
end
