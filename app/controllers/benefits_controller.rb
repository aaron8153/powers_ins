class BenefitsController < ApplicationController
  def index
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "benefits"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def individual
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "individual"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def group
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "group"
  	@about = AboutHeading.find_by_page(@current_action)
  end
  
  def solutions
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "product"
  	@about = AboutHeading.find_by_page(@current_action)
  end
  
  def mywave
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "mywave"
  	@about = AboutHeading.find_by_page(@current_action)
  end
  
  def login
  	@floatheader = "Benefits"
	@current_page = "benefits"
	@floater = [["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "login"
  	@about = AboutHeading.find_by_page(@current_action)
  end

end