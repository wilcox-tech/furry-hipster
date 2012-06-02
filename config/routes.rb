Website::Application.routes.draw do
  root :to => 'static_page#index'
  
  match '/:slug' => 'categories#show', :as => :category
  match '/:category/:slug' => 'pages#show', :as => :category_page
end
