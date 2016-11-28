class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	
		@products = Product.order(:id)
		
		
  end
   def show
  	
		@product = Product.friendly.find(params[:id])


    @style = Style.find(@product.style_id)
    @gender = Gender.all.select { |m| m.style_id == @style.id }
    @size = Size.where("style_id = ?", @style.id)
		
  end

end
