FlutterMerchant::Application.routes.draw do

  devise_for :admins, controllers: { registrations: "registrations" }
  devise_for :merchants, controllers: { registrations: "registrations" }, except: [:create]
  resources :merchant_applications, except: [:show]
  resources :add_offering
  resources :add_activity # routes for adding general activity -- Wizard steps
  resources :add_booking # routes for adding booking -- Wizard steps
  resources :offerings # unnecessary routes
  
  #get '/merchants/index' => 'merchants#index'
  
  # resources :merchants

  get '/merchant_applications/thanks'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static_pages#index'

  get '/static_pages/index'
  get '/static_pages/new_landing'
  get '/static_pages/test'

  # routes for merchant dashboard defined here
  get 'dashboard/main'
  get 'dashboard/offerings'
  get 'dashboard/offering_type'
  get 'dashboard/new_offering'
  get 'dashboard/new_activity'
  get 'dashboard/new_booking'
  get 'dashboard/offerings_index'
  post 'create_activity' => 'dashboard#create_activity', as: :create_activity
  post 'create_offering' => 'dashboard#create_offering', as: :create_offering
  post 'create_booking' => 'dashboard#create_booking', as: :create_booking

  # routes for admin dashboard defined here
  get 'admin_dashboard/main'
  get 'admin_dashboard/new_merchant'
  get 'admin_dashboard/review'

  # path for building the merchant through the admin dashboard
  post 'create_merchant' => 'admin_dashboard#create', as: :create_merchant
  
  # path for showing the merchant application details
  get '/merchant_applications/:id', to: 'admin_dashboard#show'

  # path for showing the merchant details
  get '/merchants/:id', to: 'admin_dashboard#show_merchant', as: 'merchant'

  # path for destroying merchant
  delete 'merchants/:id' => 'admin_dashboard#destroy'

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
