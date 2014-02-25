DiwanouGallas::Application.routes.draw do
  get "galeris/lieux_historiques"

  get "galeris/grandes_figures"

  get "galeris/archives_dahiras"

  get "galeris/serigne_gallas"

  get "videos/archives_dahiras"

  get "videos/archives_magal_rajab"

  get "videos/archives_magal_touba"

  get "videos/discours_serigne_gallas"

  get "serigne_touba/changement_rapports"

  get "serigne_touba/retour_exil"

  get "serigne_touba/reprises_hostilites"

  get "serigne_touba/jewol"

  get "serigne_touba/disparition"

  get "serigne_touba/gabon"

  get "serigne_touba/etape_diourbel"

  get "serigne_touba/exil"

  get "serigne_touba/hostilites_colons"

  get "serigne_touba/touba"

  get "serigne_touba/mouridiya"

  get "serigne_touba/origine"

  get "serigne_touba/biographie"

  get "serigne_touba/index"

  resources :category_videos


  resources :lieux_historiques


  get "home/serigne_karim"

  get "home/serigne_gallas"

  resources :evenements


  resources :videos


  resources :galeris


  resources :category_galeris


  devise_for :users

  resources :comments


  resources :articles


  resources :users


  resources :dahiras


  resources :regions


  get "home/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
