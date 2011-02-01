class HomeController < ApplicationController
  def index
  	@current_page = "home"
  	@about = AboutHeading.find_by_page(@current_page)
  	render :layout => "home"  	
  end
  def privacy
  	@current_page = "privacy"
 	@floatheader = "Legal Information"
  	@floater = [["privacy" , "/privacy"], ["terms" , "/terms"]]
  	@about = AboutHeading.find_by_page(@current_page)
  	render :layout => "application"
  end
  def terms
  	@current_page = "terms"
 	@floatheader = "Legal Information"
  	@floater = [["privacy" , "/privacy"], ["terms" , "/terms"]]
  	@about = AboutHeading.find_by_page(@current_page)
  	render :layout => "application"
  end
end
