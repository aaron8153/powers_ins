class HomeautoController < ApplicationController	
  def index
  	@current_page = "homeauto"
  	@about = AboutHeading.find_by_page(@current_page)
  end

  def quote
  end

  def claim
  end

  def autoid
  end

  def policy
  end

  def billing
  end

end
