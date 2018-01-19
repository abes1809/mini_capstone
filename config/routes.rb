Rails.application.routes.draw do
 get "/products" => 'products#index'
 post "/prodcuts" => 'products#create'
 get "/products/:id" => 'products#show'
end
