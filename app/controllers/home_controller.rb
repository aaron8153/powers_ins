class HomeController < ApplicationController
  def index
  	@current_page = "home"
  	render :layout => "home"  	
  end

  def about
  	@current_page = "about"
  end

  def associates
  	@current_page = "associates"
  end

  def affiliations
  	@current_page = "affiliations"
  end

  def hub
  	@current_page = "hub"
  end

  def contact
  	@current_page = "contact"
  end

  def privacy
  	@current_page = "privacy"
  end

  def terms
  	@current_page = "terms"
  end

end
