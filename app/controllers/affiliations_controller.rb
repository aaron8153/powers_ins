class AffiliationsController < ApplicationController
   def index
  	@current_page = "affiliations"
  	render :layout => "full"  	
  end

end
