class SupportController < ApplicationController
	  include CurrentCart
  before_action :set_cart
    
  def aboutus
        set_meta_tags title: 'О нас',
                  description: 'Купить футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений'
        @product= Product.all;
        @blogger= Blogger.new;

  end

  def help
  end

  def contact
            set_meta_tags title: 'Контакты',
                  description: 'Купить футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений'

  end

  def offer
            set_meta_tags title: 'Оферта',
                  description: 'Купить футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений'

  end

  def pricing
            set_meta_tags title: 'Ценовая политика',
                  description: 'Купить футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений'

  end

  def blog
  end
end
