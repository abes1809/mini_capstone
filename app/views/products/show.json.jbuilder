json.id @product.id 
json.name @product.name 
json.image_url @product.image_url
json.description @product.description
json.is_discounted @product.discounted? 
json.tax @product.tax 
json.total @product.total
json.price @product.price 
json.formatted_price number_to_currency @product.price
json.supplier_name @product.supplier.name 
