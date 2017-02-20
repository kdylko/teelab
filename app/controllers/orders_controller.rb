class OrdersController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:new, :create, :update, :show]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order= Order.find(params[:id])
  end

  # GET /orders/new
  def new
    if @cart.line_items.empty?
      redirect_to :back, notice: "Your cart is empty"
      return
    end
   
    @order = Order.new
    @order_clientid = Time.now.strftime("%d%m%Y").to_s+@cart.id.to_s
    @delivery= Delivery.all
  end

  # GET /orders/1/edit
  def edit

  end

  def confirm
  end

  # POST /orders
  # POST /orders.json
  def create
    
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    @delivery = Delivery.all
    @order.user_id = current_user.id if current_user


    respond_to do |format|
      if @order.save

        format.html { redirect_to order_path(@order) }

        format.json { render :show, status: :created, location: @order }
      else
        
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update

    @order.pay = "paid"

    respond_to do |format|
      if @order.update(order_params)
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil   
        format.html { redirect_to support_confirm_path }


        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :phone, :order_clientid, :delivery_price, :delivery_id, :order_amount, :pay)
    end
end
