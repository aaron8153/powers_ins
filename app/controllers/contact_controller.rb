class ContactController < ApplicationController
  def index
  	@floatheader = "Contact Us"
	@current_page = "contact"
	@floater = [["map", "/contact"], ["email" , "/contact/email"], ["referal" , "/contact/referal"]]
  	@current_action = "contact"
  	@about = AboutHeading.find_by_page(@current_action)
  end

  def email
  end

  def referal
  end

end
