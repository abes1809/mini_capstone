class OrdersController < ApplicationController
  before_action :authenticate_user

  def index 
    @orders = current_user.orders 
    render 'index.json.jbuilder'
  end 

  def create
    @carted_products = current_user.carted_products.where(status: "carted")

    subtotal = 0 

    @carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price 
    end 

    tax = subtotal * 0.09
    total = subtotal + tax 

    @order = Order.new(
                      user_id: current_user.id,
                      subtotal: subtotal, 
                      tax: tax,
                      total: total 
                      )

    # @order.calculate_totals 

    if @order.save 
      @carted_products.each do |carted_product|
        carted_product.order_id = @order.id 
        carted_product.status = "purchased"
        if carted_product.save 
        else 
          render json: {errors: carted_product.errors.full_message}, status: :bad_request
        end 
      end 
    render 'show.json.jbuilder'
    else 
      render json: {errors: order.errors.full_message}, status: :bad_request
    end 
  end 
end
