class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index 
    @carted_products = current_user.carted_products.where(status: "carted")
    render 'index.json.jbuilder'
  end 

  def create
    @carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )

    @carted_product.save 
    render json: {message: "#{@carted_product.quantity} of #{@carted_product.product.name} added to cart"}
  end 

  def destroy 
    carted_product = CartedProduct.find(params[:id])
    if carted_product.status == "carted"
      carted_product.status = "removed"
      if carted_product.save
        render json: {message: "succesfully removed #{carted_product.product.name} from your cart"}
      else 
        render json: {errors: carted_product.errors.full_message}, status: :bad_request
      end 
    else 
    render json: {message: "That item is not in your cart"}
    end 
  end 

end
