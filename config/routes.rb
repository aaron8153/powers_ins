Powers::Application.routes.draw do

  get "aboutus/index"

  get "affiliations/index"

  resources :associates

  resources :blogs do
  	resources :comments
  end
  
  resources :companies
  
  resources :policy_changes

  resources :auto_ids

  get "benefits/index"

  get "benefits/individual"

  get "benefits/group"

  get "homeauto/index"

  get "homeauto/claim"

  get "homeauto/autoid"

  get "homeauto/policy"

  get "homeauto/billing"
  
  get "businesss/index"

  get "businesss/consultation"

  get "businesss/claim"

  get "businesss/policy"

  get "businesss/certificate"

  get "businesss/autoid"
  
  get "business/billing"

  

  resources :about_headings

  resources :tickers
  
  get "home/index"

	root :to => 'home#index'
	
	match "/privacy" => 'home#privacy'
	match "/terms" => 'home#terms'
	match "/aboutus" => 'aboutus#index'
	
	match "/affiliations" => 'affiliations#index'
	
	match "/business" => 'business#index'
		match "/business/consultation" => 'business#consultation'
		match "/business/claim" => 'business#claim'
		match "/business/policy" => 'business#policy'
		match "/business/certificate" => 'business#certificate'
		match "/business/autoid" => 'business#autoid'
		match "/business/billing" => 'business#billing'

	match "/homeauto" => 'homeauto#index'
		match "/homeauto/claim" => 'homeauto#claim'
		match "/homeauto/autoid" => 'homeauto#autoid'
		match "/homeauto/policy" => 'homeauto#policy'
		match "/homeauto/billing" => 'homeauto#billing'
	
	
	match "/benefits" => 'benefits#index'
		match "/benefits/individual" => 'benefits#individual'
		match "/benefits/group" => 'benefits#group'
  
  
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
