Website::Application.routes.draw do
  root :to => 'static_page#index'
  
  match '/:slug' => 'categories#show', :as => :category
  match '/:category/:slug' => 'products#show', :as => :category_product
  match '/:category/:product/:slug' => 'detail_pages#show', :as => :category_product_detail
end
