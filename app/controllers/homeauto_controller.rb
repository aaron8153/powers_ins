class HomeautoController < ApplicationController
	uses_tiny_mce 
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
  	@current_action = "claim"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  end

  def autoid
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "autoid"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	
  	@success = false
  	if request.post?
  		@auto = AutoId.new(params[:auto])
  		
    	if @auto.save
    		@success = true
    		UserMailer.confirmation_email(@auto).deliver
    	else
    		@success = false
    	end
    else
     	@auto = AutoId.new
    end
  end

  def policy
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "policy"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  	
  	@success = false
  	if request.post?
  		@policy_change = PolicyChange.new(params[:policy_change])
  		
    	if @policy_change.save
    		@success = true
    		UserMailer.confirmation_email(@policy_change).deliver
    	else
    		@success = false
    	end
    else
     	@policy_change = PolicyChange.new
    end
  end

  def billing
  	@floatheader = "Home & Auto"
  	@current_page = "homeauto"
  	@floater = [["quote" , "http://www.powersinsuranceandbenefits.net/index.aspx?tp=1&sid=29018"], ["claim" , "/homeauto/claim"], ["autoid" , "/homeauto/autoid"], ["policy" , "/homeauto/policy"],["billing" , "/homeauto/billing"]]
  	@current_action = "billing"
  	@about = AboutHeading.find_by_page("homeauto-" + @current_action)
  end

end

