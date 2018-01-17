class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end
