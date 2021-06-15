Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products_method"
  get "/one_product", controller: "products", action: "one_product_method"
  get "/one_product/:id", controller: "products", action: "one_product_method"
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  get "/tesla_articles" =>  "tesla_articles#index"

end
