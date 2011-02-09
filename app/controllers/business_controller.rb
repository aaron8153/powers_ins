class BusinessController < ApplicationController
	uses_tiny_mce
	
  def index
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "business"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Solutions for Business"
  end
  
  def consultation
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "consultation"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Business - Request Consultation"
  	
  	@success = false
  	if request.post?
  		@consult = Consult.new(params[:consult])
  		
    	if @consult.save
    		@success = true
    		UserMailer.confirmation_email(@consult).deliver
    		PowersMailer.confirmation_email(@consult, request).deliver
    	else
    		@success = false
    	end
    else
     	@consult = Consult.new
    end
    
  end

  def claim
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "claim"
  	@about = AboutHeading.find_by_page(@current_action)
  	@companies = Company.where("bus_claim = true").order('name ASC')
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies,restoration"
  	@meta_desc = ""
  	@subtitle = " - Business - Report Claim"
  end

  def policy
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "policy"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Business - Request Policy Change"
  	
  	
	@success = false
  	if request.post?
  		@policy_change = PolicyChange.new(params[:policy_change])
  		
    	if @policy_change.save
    		@success = true
    		UserMailer.confirmation_email(@policy_change).deliver
    		PowersMailer.confirmation_email(@policy_change, request).deliver
    	else
    		@success = false
    	end
    else
     	@policy_change = PolicyChange.new
    end
  end

  def certificate
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "certificate"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Business - Request Certificate"
  	
  	@success = false
  	if request.post?
  		@cert = Certificate.new(params[:cert])
  		
    	if @cert.save
    		@success = true
    		UserMailer.confirmation_email(@cert).deliver
    		PowersMailer.confirmation_email(@cert, request).deliver
    	else
    		@success = false
    	end
    else
     	@cert = Certificate.new
    end
  end

  def autoid
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "autoid"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Business - Request Auto ID Cards"
  	
  	@success = false
  	if request.post?
  		@auto = AutoId.new(params[:auto])
  		
    	if @auto.save
    		@success = true
    		UserMailer.confirmation_email(@auto).deliver
    		PowersMailer.confirmation_email(@auto, request).deliver
    	else
    		@success = false
    	end
    else
     	@auto = AutoId.new
    end
  end

  def billing
  	@floatheader = "Business"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "billing"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "solutions,consultation,claim,policy,change,certificate,auto,id,cards,billing,companies"
  	@meta_desc = ""
  	@subtitle = " - Business - Billing Information"
  end

end
