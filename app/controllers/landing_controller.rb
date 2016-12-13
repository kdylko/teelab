class LandingController < ApplicationController
  include CurrentCart
  before_action :set_cart
  layout :resolve_layout
  
  def index
  	@product = Product.all
    set_meta_tags title: 'Создать собственный дизайн футболок, свитшотов, толстовок и худи',
                  description: 'Создать и начать продавать футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений',
                  keywords: 'создать футболку с принтом, без вложений, начать продавать, футболка, толстовка, свитшот, худи, с принтами, дизайн, блоггер, создать, купить'

  end

  def three
    set_meta_tags title: 'Купить или создать футболки, свитшоты, толстовки и худи',
                  description: 'Купить или создать и начать продавать футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений',
                  keywords: 'футболка, толстовка, свитшот, худи, с принтами, дизайн, блоггер, создать, купить',
                  og: {
                    image: 'sound.jpg'
                  }
  end
   def devel
  end

  private

  def resolve_layout
    case action_name
    when "index"
      "application"
    else 
      "landdev"
    end
  end
end
