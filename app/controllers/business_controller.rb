class BusinessController < ApplicationController
	
  def index
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "business"
  	@about = AboutHeading.find_by_page(@current_action)
  end
  
  def consultation
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "consultation"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def claim
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "claim"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def policy
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "policy"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def certificate
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "certificate"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def autoid
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "autoid"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def billing
  	@floatheader = "Business Clients"
	@current_page = "business"
	@floater = [["consultation" , "/business/consultation"], ["claim" , "/business/claim"], ["policy" , "/business/policy"], ["certificate" , "/business/certificate"],["autoid" , "/business/autoid"],["billing" , "/business/billing"]]
  	@current_action = "billing"
  	@about = AboutHeading.find_by_page(@current_action)
  end

end
