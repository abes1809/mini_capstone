json.id product.id 
json.name product.name 
json.description product.description
json.is_discounted product.discounted? 
json.tax product.tax 
json.price product.price 
json.total product.total
json.formatted do 

              json.price number_to_currency(product.price)
              json.tax number_to_currency(product.tax)
              json.total number_to_currency(product.total)

              end 
json.formatted_price number_to_currency product.price
json.supplier product.supplier 
json.image product.image