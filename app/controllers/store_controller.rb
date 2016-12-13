class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	
		@products = Product.order(:id)
        @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
        @blank = Product.all.where(category: ["blank"]) 
    @intelligence = Product.all.where(category: ["intelligence"]) 

    set_meta_tags title: 'Купить футболки, свитшоты, толстовки и худи',
                  description: 'Купить футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений',
                  keywords: 'футболка, толстовка, свитшот, худи, с принтами, дизайн, блоггер, купить',

		
  end
   def show
  	
		@product = Product.friendly.find(params[:id])
    @style = Style.find(@product.style_id)
    @gender = Gender.all.select { |m| m.style_id == @style.id }
    @size = Size.where("style_id = ?", @style.id)
    @color = Color.where("styleid = ?", @style.id)
    @sizetable = Sizetable.where("style_id = ?", @style.id)
		
  end
    def intelligence
    
    @products = Product.order(:id)
    @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
    @intelligence = Product.all.where(category: ["intelligence"]) 
    set_meta_tags title: 'Купить новогодние футболки, свитшоты, толстовки и худи',
                  description: 'Купить новогодние футболки, свитшоты, толстовки и худи с уникальным дизайном без вложений',
                  keywords: 'новогодние, новогодние принты, подарки на новый год, футболка, толстовка, свитшот, худи, с принтами, дизайн, купить',


     
  end
  def bloggers
    
    @products = Product.order(:id)
    @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
    @bloggers = Product.all.where(category: ["blogger", "all"]) 


     
  end

end
