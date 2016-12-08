class Product < ActiveRecord::Base
	extend FriendlyId
	friendly_id :url_name
	belongs_to :style
	has_many :images, dependent: :destroy, :autosave => true
	has_many :line_items
	has_many :sizes, through: :style
	has_many :orders, through: :line_items
	has_many :colors, through: :product_colors
	has_many :product_colors
	before_destroy :ensure_not_referenced_by_any_line_item
	belongs_to :user
	accepts_nested_attributes_for :images, :reject_if => lambda { |t| t['image'].nil? }
	validates :title, :url_name, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.10}
	validates :title, uniqueness: true
	validates :url_name, uniqueness: true, format: { with: /\A[a-z]+\z/, message: 'только строчные буквы' }

	def item_count
		orders.to_a.sum { |item| item.order_count}
	end

	private
	# убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существуют товарные позиции')
			return false
		end
	end	
end
