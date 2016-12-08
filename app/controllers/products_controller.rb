class ProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @blogger = Product.all.where(category: ["blogger"])
    @newyear = Product.all.where(category: ["new_year"])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.friendly.find(params[:id])
    @style = Style.find(@product.style_id)
    @color = Color.where("styleid = ?", @style.id)
    @gender = Gender.all.select { |m| m.style_id == @style.id }
    @size = Size.where("style_id = ?", @style.id)


  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id if current_user


    respond_to do |format|
      if @product.save
        if params[:photos]
        #===== The magic is here ;)
        params[:photos].each { |photo|
          @product.images.create(photo: photo)}
        end
        format.html { redirect_to user_product_path(@product.user, @product) }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @user = User.find(params[:user_id])
    @product.user_id = current_user.id if current_user  
    
    respond_to do |format|
      if @product.update(product_params)
        

        if params[:photos]
        #===== The magic is here ;)
        params[:photos].each { |photo|
          @product.images.create(photo: photo)}
        end
        format.html { redirect_to :back}
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :url_name, :price, :photos, :user_id, :style_id, :category)
    end
end
