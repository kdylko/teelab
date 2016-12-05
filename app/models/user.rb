class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  accepts_nested_attributes_for :products, :reject_if => lambda { |t| t['product'].nil? }
  has_many :orders
  accepts_nested_attributes_for :orders, :reject_if => lambda { |t| t['product'].nil? }
  

end
