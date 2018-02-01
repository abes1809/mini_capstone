class ProductsController < ApplicationController
  before_action :authenticate_admin only [:create, :update, :destory]

  def index 
    
    search_term = params[:search]

    @products = Product.all 

    if search_term
      @products = @products.where("name iLIKE ?",
                               "%#{search_term}%"
                               )
    end 

    sort_attribute = params[:sort]

    if sort_attribute
      @products = @products.order(sort_attribute => :asc)
    end 
    
    render 'index.json.jbuilder'
  end 

  def create 
    @product = Product.new(
                         name: params[:name],
                         price: params[:price], 
                         description: params[:description],
                         supplier_id: params[:supplier_id],
                         image: params[:image]
                          )
    if @product.save 
      render 'show.json.jbuilder'
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def show 
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update 
    @product = Product.find(params[:id])

    @product.name = params[:name] || product.name 
    @product.price = params[:price] || product.price
    @product.description = params[:description] || product.description
    @product.supplier_id = params[:supplier_id] || product.supplier_id
    @product.image = params[:image] || product.image
  
    if @product.save
      render 'show.json.jbuilder'
    else   
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def destroy 
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Successfully destroyed product ##{product.id}."}
  end 


end
