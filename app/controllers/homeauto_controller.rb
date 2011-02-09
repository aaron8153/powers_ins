class HomeautoController < ApplicationController
	uses_tiny_mce 
  def index
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Individual"
  end

  def claim
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "claim"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	@companies = Company.where("homeauto_claim = true").order('name ASC')
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,restoration"
  	@meta_desc = ""
  	@subtitle = " - Individual - Report Claim"
  end

  def autoid
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "autoid"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Individual - Auto ID Cards"
  	
  	@success = false
  	if request.post?
  		@auto = AutoId.new(params[:auto])
  		
    	if @auto.save
    		@success = true
    		UserMailer.confirmation_email(@auto).deliver
    		PowersMailer.confirmation_email(@auto).deliver
    	else
    		@success = false
    	end
    else
     	@auto = AutoId.new
    end
  end

  def policy
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "policy"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Individual - Request Policy Change"
  	
  	@success = false
  	if request.post?
  		@policy_change = PolicyChange.new(params[:policy_change])
  		
    	if @policy_change.save
    		@success = true
    		UserMailer.confirmation_email(@policy_change).deliver
    		PowersMailer.confirmation_email(@policy_change).deliver
    	else
    		@success = false
    	end
    else
     	@policy_change = PolicyChange.new
    end
  end

  def billing
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "billing"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	@companies = Company.where("homeauto_billing = true").order('name ASC')
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Individual - Billing Information"
  end
  
  def quote
  	@floatheader = "Individual Solutions"
  	@current_page = "homeauto"
  	@floater = [["quote" , "/homeauto/quote"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "quote"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "individual,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Individual - Request Quote"
  	
  	@success = false
  	if request.post?
  		@quote = Quote.new(params[:quote])
  		
    	if @quote.save
    		@success = true
    		UserMailer.confirmation_email(@quote).deliver
    		PowersMailer.confirmation_email(@quote).deliver
    	else
    		@success = false
    	end
    else
     	@quote = Quote.new
    end
  end

end

