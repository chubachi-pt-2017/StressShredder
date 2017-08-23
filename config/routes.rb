Rails.application.routes.draw do

  get '/users/show/:id'        => 'users#show'
###  
   get 'microposts/guchi/:id'  => 'microposts#guchi'
#  get '  get '/microposts/index'/:id'   => 'microposts#index'

  get    '/guchi-feedback' => 'static_pages#guchi-feedback'
  get    '/jiman-feedback' => 'static_pages#jiman-feedback'
  get    '/inori-feedback' => 'static_pages#inori-feedback'
  
#  get    '/guchi_feedback'    => 'users#guchi_feedback'
#  get    '/inori_feedback'    => 'users#inori_feedback'
#  get    '/jiman_feedback'    => 'users#jiman_feedback'
###
  get    '/guchi/:id'    => 'users#guchi'
  get    '/jiman/:id'    => 'users#jiman'
  get    '/inori/:id'    => 'users#inori'
  get    '/list/:id'    => 'users#list'
#
  get '/microposts/:id'   => 'microposts#index'
  get '/microposts/list/:id'   => 'microposts#list'
###
  get '/users/guchi/:id'        => 'users#guchi'  
  get '/users/:id'        => 'users#index'
  get '/users/list/:id'        => 'users#list'
###
  get 'sessions/new'
  get 'users/new'       => 'users#new'
  get 'microposts/new/:id'  => 'microposts#new'
###
  resources :microposts
  
# root                'users#index'
 root                'static_pages#home'
#  get 'static_pages/home'
  
  get    '/help'    => 'static_pages#help'
  get    '/login'   => 'sessions#new'
  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
resources :users
  

###
#  get    '/guchi'    => 'static_pages#guchi'
#  get    '/jiman'    => 'static_pages#jiman'
#  get    '/inori'    => 'static_pages#inori'
#  get    '/list'    => 'static_pages#list'
  get    '/signup'  => 'users#new'
   #post '/signup'  => 'users#create'

###

  

  
  

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
#root 'users#index'