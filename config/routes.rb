Rails.application.routes.draw do
  
 
  get 'support/aboutus'
  get 'support/help'
  get 'support/contact'
  get 'support/offer'
  get 'support/pricing'
  get 'support/blog'
  get 'support/confirm'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'landing/index'
  get 'landing/devel'
  get 'landing/three'

  get 'store/intelligence'

  resources :orders
  resources :line_items, only: [:new, :create, :edit, :update, :destroy]
  resources :carts do
    resources :line_items
  end

  get 'store/index' => 'store#index'



  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :admin do
     resources :products do
      resources :images
    end
  end
  
  resources :users do
    resources :products do
      resources :images
    end
  end

  resources :styles, only: [:new, :create, :edit, :update, :destroy] do
    resources :genders, only: [:new, :create, :edit, :update, :destroy] do
      resources :sizes, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resources :images
  resources :store, :controller => "products"


  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing#devel' 

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get ':id' => 'products#show'
  get 'blogger/index' => 'landing#index'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
