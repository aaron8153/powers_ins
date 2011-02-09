class HomeController < ApplicationController
  def index
  	@current_page = "home"
  	@about = AboutHeading.find_by_page(@current_page)
  	@keywords = "home,home page,index,contact"
  	@meta_desc = ""
  	@subtitle = ""
  	render :layout => "home"  	
  end
  def privacy
  	@current_page = "privacy"
 	@floatheader = "Legal Information"
  	@floater = [["privacy" , "/privacy"], ["terms" , "/terms"]]
  	@about = AboutHeading.find_by_page(@current_page)
  	@keywords = "legal,information,privacy,policy,terms,conditions"
  	@meta_desc = ""
  	@subtitle = " - Privacy Policy"
  	render :layout => "application"  	
  end
  def terms
  	@current_page = "terms"
 	@floatheader = "Legal Information"
  	@floater = [["privacy" , "/privacy"], ["terms" , "/terms"]]
  	@about = AboutHeading.find_by_page(@current_page)
  	@keywords = "legal,information,privacy,policy,terms,conditions,disclaimer"
  	@meta_desc = ""
  	@subtitle = " - Terms & Conditions"
  	render :layout => "application"  	
  end
end
