class HomeautoController < ApplicationController
	
  def index
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def claim
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def autoid
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def policy
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def billing
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "homeauto"
  	@about = AboutHeading.find_by_page(@current_action)
  end

end

