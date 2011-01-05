class BenefitsController < ApplicationController
  def index
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["individual" , "/benefits/individual"], ["group" , "/benefits/group"]]
  	@current_action = "benefits"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def individual
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["individual" , "/benefits/individual"], ["group" , "/benefits/group"]]
  	@current_action = "individual"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def group
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["individual" , "/benefits/individual"], ["group" , "/benefits/group"]]
  	@current_action = "group"
  	@about = AboutHeading.find_by_page(@current_action)
  end

end
