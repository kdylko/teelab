class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  belongs_to :size

  def total_price
    product.price * quantity
  end
  def total_count
    quantity
  end
  
end
