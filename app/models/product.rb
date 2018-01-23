class Product < ApplicationRecord

  def discounted? 
    price < 20 #replacing...

    # if price < 20
    #   return true
    # else 
    #   return false 
    # end
  end 

  def tax
    (price * 0.09).round(2)
  end 

  def total 
    tax + price 
  end 

  def as_json
    {
      id: id, 
      name: name,
      in_stock?: in_stock?,
      discounted?: discounted?,
      tax: tax,
      price: price,
      total: total, 
      image_url: image_url,
      description: description
      }
  end 
end
