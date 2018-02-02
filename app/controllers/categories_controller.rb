class CategoriesController < ApplicationController

  def index 
    @categories = Category.all
    render 'index.json.jbuiler'
  end 

end
