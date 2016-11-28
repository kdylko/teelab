class LandingController < ApplicationController
  include CurrentCart
  before_action :set_cart
  layout 'application', :except => [:index]
  def index

  end
  def three
  end
end
