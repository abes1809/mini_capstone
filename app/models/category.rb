class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  # def products 
  #   Category_products.map{ |Category_product| Category_product.product }
  # end 
end
