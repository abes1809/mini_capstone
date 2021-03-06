 class Product < ApplicationRecord
  belongs_to :supplier 
  has_many :image
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_proudcts

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

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

end
