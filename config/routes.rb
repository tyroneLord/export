Store::Application.routes.draw do
  resources :products do
  	collection {post :import } #import_products POST   /products/import(.:format)   products#import
  end

  root to: 'products#index'
end
