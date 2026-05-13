Rails.application.routes.draw do

  # get "/products", to: "products#index"

  # get "/products/new", to: "products#new"
  # post "/products", to: "products#create"

  # get "/products/:id", to: "products#show"
  # get "/products/:id", to: "products#show", as: "product" 
  # bu da _path oluşturur, product_path(product.id) şeklinde kullanılır

  # get "/products/:id/edit", to: "products#edit"
  # patch "/products/:id", to: "products#update"
  # put "/products/:id", to: "products#update"

  # delete "/products/:id", to: "products#destroy"


  root "products#index"

  resources :products
end
