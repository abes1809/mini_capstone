# json.id @product.id 
# json.name @product.name 
# json.image_url @product.image_url
# json.description @product.description
# json.is_discounted @product.discounted? 
# json.tax @product.tax 
# json.price @product.price 
# json.total @product.total
# json.formatted do 

#               json.price number_to_currency(@product.price)
#               json.tax number_to_currency(@product.tax)
#               json.total number_to_currency(@product.total)

#               end 
# json.formatted_price number_to_currency @product.price
# json.supplier_name @product.supplier.name

json.partial! @product, partial: "product", as: :product  
