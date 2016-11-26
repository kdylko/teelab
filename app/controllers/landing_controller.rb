class LandingController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
  end
  def three
  end
end
