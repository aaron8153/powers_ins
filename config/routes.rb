Powers::Application.routes.draw do
  resources :about_headings

  resources :tickers

  get "financial/planning"

  get "financial/advisors"

  get "homeauto/quote"

  get "homeauto/claim"

  get "homeauto/autoid"

  get "homeauto/policy"

  get "homeauto/billing"

  get "benefits/group"

  get "benefits/individual"

  get "business/consultation"

  get "business/claim"

  get "business/policy"

  get "business/certificate"

  get "business/autoid"

  get "business/billing"

  get "home/index"

  get "home/about"

  get "home/associates"

  get "home/affiliations"

  get "home/hub"

  get "home/contact"

  get "home/privacy"

  get "home/terms"

	root :to => 'home#index'
	match '/about', :to => 'home#about'
	match '/associates', :to => 'home#associates'
	match '/affiliations', :to => 'home#affiliations'
	match '/hub', :to => 'home#hub'
	match '/contact', :to => 'home#contact'
	match '/privacy', :to => 'home#privacy'
	match '/terms', :to => 'home#terms'
	
	match '/business/consultation', :to => 'business#consultation'
	match '/business/claim', :to => 'business#claim'
	match '/business/policy', :to => 'business#policy'
	match '/business/certificate', :to => 'business#certificate'
	match '/business/autoid', :to => 'business#autoid'
	match '/business/billing', :to => 'business#billing'
	
	match '/benefits/group', :to => 'benefits#group'
	match '/benefits/individual', :to => 'benefits#individual'
	
	match '/homeauto/quote', :to => 'homeauto#quote'
	match '/homeauto/claim', :to => 'homeauto#claim'
	match '/homeauto/autoid', :to => 'homeauto#autoid'
	match '/homeauto/policy', :to => 'homeauto#policy'
	match '/homeauto/billing', :to => 'homeauto#billing'
	
	match '/financial/planning', :to => 'financial#planning'
	match '/financial/advisors', :to => 'financial#advisors'
  
  
  
  
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
