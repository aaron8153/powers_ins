class BenefitsController < ApplicationController
	uses_tiny_mce
  def index
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "benefits"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits"
  end

  def individual
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "individual"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits - Individual"
  end

  def group
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "group"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits - Group"
  end
  
  def solutions
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "product"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits - Product Solutions"
  end
  
  def mywave
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "mywave"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits - ZyWave Portal"
  end
  
  def login
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "login"
  	@about = AboutHeading.find_by_page(@current_action)
  end
  
  def consultation
  	@floatheader = "HR & Benefits"
	@current_page = "benefits"
	@floater = [["consultation", "/benefits/consultation"], ["group" , "/benefits/group"], ["product" , "/benefits/solutions"], ["individual", "/benefits/individual"], ["mywave", "/benefits/mywave"], ["login", "https://powers.easyappsonline.com/"]]
  	@current_action = "consultation"
  	@about = AboutHeading.find_by_page(@current_action)
  	@keywords = "product,solutions,mywave,zywave,login,individual,group,family,request,quote,claim,policy,change,certificate,auto,id,cards,billing,companies,consultation"
  	@meta_desc = ""
  	@subtitle = " - Benefits - Request Consultation"
  	
  	@success = false
  	if request.post?
  		@consult = Consult.new(params[:consult])
  		
    	if @consult.save
    		@success = true
    		UserMailer.confirmation_email(@consult).deliver
    		PowersMailer.confirmation_email(@consult, request).deliver
    	else
    		@success = false
    	end
    else
     	@consult = Consult.new
    end
    
  end

end