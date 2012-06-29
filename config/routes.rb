Website::Application.routes.draw do
  root :to => 'static_page#index'
  
  resources :pr, :controller => "PressReleases", :only => [:index, :show]
  
  match '/:slug' => 'categories#show', :as => :category
  match '/:category/:slug' => 'products#show', :as => :category_product
  match '/:category/:product/:slug' => 'detail_pages#show', :as => :category_product_detail_page
end
