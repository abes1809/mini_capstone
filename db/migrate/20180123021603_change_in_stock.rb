class ChangeInStock < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :in_stock?, :boolean, default: true 
  end
end
