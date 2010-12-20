class HomeController < ApplicationController
  def index
  	@current_page = "home"
  	@about = AboutHeading.find_by_page(@current_page)
  	render :layout => "home"  	
  end
end
