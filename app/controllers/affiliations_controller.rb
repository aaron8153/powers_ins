class AffiliationsController < ApplicationController
   def index
  	@current_page = "affiliations"
  	@keywords = "affiliations,Trusted Choice,WorkComp,Advisor,VIAA,Valley,Agency,Alliance,MAIA,IIA,SIAA"
  	@meta_desc = ""
  	@subtitle = " - Affiliations"
  	render :layout => "full"  	
  end

end
