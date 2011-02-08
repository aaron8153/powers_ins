class AboutusController < ApplicationController
  uses_tiny_mce
  def index
  	@floatheader = "About Us"
  	@testimonials = Testimonial.all
	@current_page = "aboutus"
  	@current_action = "aboutus"
  	@about = AboutHeading.find_by_page(@current_page)
  end

end
