class LandingController < ApplicationController
  include CurrentCart
  before_action :set_cart
  layout 'landing'
  
  def index
  	@product = Product.all
  end

  def three
  end
end
