Website::Application.routes.draw do
  root :to => 'static_page#index'
  
  match '/:slug' => 'categories#show'
end
