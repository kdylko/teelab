class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	
		@products = Product.order(:id)
        @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
        @blank = Product.all.where(category: ["blank"]) 
    @intelligence = Product.all.where(category: ["intelligence"]) 



		
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
    

     
  end
  def bloggers
    
    @products = Product.order(:id)
    @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
    @bloggers = Product.all.where(category: ["blogger", "all"]) 


     
  end

end
