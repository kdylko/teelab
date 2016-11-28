class SupportController < ApplicationController
	  include CurrentCart
  before_action :set_cart
    
  def aboutus
  end

  def help
  end

  def contact
  end

  def offer
  end
end
