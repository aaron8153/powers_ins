class ContactController < ApplicationController
	uses_tiny_mce
  def index
  	@floatheader = "Contact Us"
	@current_page = "contact"
	@floater = [["map", "/contact"], ["email" , "/contact/email"], ["referal" , "/contact/referal"]]
  	@current_action = "contact"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "contact,find,map,email,refer,referal,hours,phone,friend"
  	@meta_desc = ""
  	@subtitle = " - Contact Us"
  end

  def email
  	@floatheader = "Contact Us"
	@current_page = "contact"
	@floater = [["map", "/contact"], ["email" , "/contact/email"], ["referal" , "/contact/referal"]]
  	@current_action = "email"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "contact,find,map,email,refer,referal,hours,phone,friend"
  	@meta_desc = ""
  	@subtitle = " - E-mail Us"
  	
  	@success = false
  	if request.post?
  		@emailus = Emailus.new(params[:emailus])
  		
    	if @emailus.save
    		@success = true
    		UserMailer.confirmation_email(@emailus).deliver
    		PowersMailer.confirmation_email(@emailus, request).deliver
    	else
    		@success = false
    	end
    else
     	@emailus = Emailus.new
    end
  end

  def referal
  	@floatheader = "Contact Us"
	@current_page = "contact"
	@floater = [["map", "/contact"], ["email" , "/contact/email"], ["referal" , "/contact/referal"]]
  	@current_action = "referal"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "contact,find,map,email,refer,referal,hours,phone,friend"
  	@meta_desc = ""
  	@subtitle = " - Refer a Friend"
  	
  	@success = false
  	if request.post?
  		@referal = Referal.new(params[:referal])
  		
    	if @referal.save
    		@success = true
    		UserMailer.confirmation_email(@referal).deliver
    		PowersMailer.confirmation_email(@referal, request).deliver
    	else
    		@success = false
    	end
    else
     	@referal = Referal.new
    end
  end

end
