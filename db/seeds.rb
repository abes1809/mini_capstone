# Product.destroy_all

# Product.create!([
#   {name: "Fancy Sweatpants", price: "30.0", description: "Literaly no one will notice you're wearing sweatpants at work", in_stock?: true, supplier_id: 1},
#   {name: "Extra Fancy Sweatpants", price: "55.0", description: "These literally look like real pants", in_stock?: true, supplier_id: 1},
#   {name: "Out on the Town Sweatpants", price: "100.0", description: "If you have a pile of cash that need to be spent, consider getting these these fancy white sweatpants. White pants are a bold move in general. People will be so distracted by the color they won't even notice the material.", in_stock?: true, supplier_id: 1, supplier_id: 2},
#   {name: "Cool Sweatpants", price: "30.0", description: "These look the coolest if can dance. If not, you can still wear them. You just won't look as cool.", in_stock?: true, supplier_id: 1},
#   {name: "Bargin Sweatpants", price: "15.0", description: "Still cool, and under 20. What more could you want?", in_stock?: true, supplier_id: 2}
# ])

#1 fancy
#2 discounty

Category.create(name: "Athletic")

CategoryProduct.create!([
                        {category_id: 1, product_id: 8},
                        {category_id: 1, product_id: 9},
                        {category_id: 1, product_id: 10},
                        {category_id: 2, product_id: 11},
                        {category_id: 2, product_id: 12},
                        {category_id: 2, product_id: 8},
                        {category_id: 3, product_id: 11},
                        {category_id: 3, product_id: 12}
                        ])


