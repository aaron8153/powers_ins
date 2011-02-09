class CarriersController < ApplicationController
	def index
		@companies_business = Company.where("bus_claim = true").order('name ASC')
		@companies_homeauto = Company.where("homeauto_claim = true").order('name ASC')
  		@current_page = "carriers"
  		@keywords = "carriers,partners,AAA,SafeCo,Chubb,Fireman\'s Fund,Cincinnati,Travelers,Hartford,Liberty Mutual,Hanover,American Modern,Progressive,Bituminous,Zurich,Zenith,Illinois Casualty,Allied,Continental Western"
  		@meta_desc = ""
  		@subtitle = " - Carriers"
  		render :layout => "full"  	
	end
end
