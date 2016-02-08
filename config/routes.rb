Rails.application.routes.draw do
  root 'pages#HomePage'
  get 'home' => 'pages#HomePage'

  get 'fandoms' => 'fandoms#index'
  get 'fandoms/new' => 'fandoms#new'
  post 'fandoms' => 'fandoms#create'
  get 'fandoms/:id' => 'fandoms#show', as: :fandom
  resources :fandoms

  get 'register' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'users/:id' => 'users#show'
  get 'users/:id/uploads' => 'users#showuploads', as: :showuploads
  get 'users/:id/favorites' => 'users#showfavorites', as: :showfavorites
  get 'users/:id/otps' => 'users#showotps', as: :showotps
  get 'users/:id/brotps' => 'users#showbrotps', as: :showbrotps
  get 'users/:id/edit' => 'users#edit', as: :edit
  get 'users/:id/edit-works' => 'users#editworks', as: :editworks

  get 'upload' => 'works#new'#'pages#UploadWork'
  get '/works/:id/:chapter_id', :controller => :chapter, :action => :show, as: :work
  resources :works
  get '/chapters/new/:work_id', :controller => :chapter, :action => :create, as: :newchapter
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
