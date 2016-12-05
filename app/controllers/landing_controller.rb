class LandingController < ApplicationController
  include CurrentCart
  before_action :set_cart
  layout :resolve_layout
  
  def index
  	@product = Product.all
  end

  def three
  end
   def devel
  end

  private

  def resolve_layout
    case action_name
    when "index"
      "landing"
    else 
      "landdev"
    end
  end
end
