class ApplicationController < ActionController::Base
  protect_from_forgery
  
  $tabs = [["home" , "/"], ["associates" , "/associates"], ["chat" , "/chat"], ["affiliations" , "/affiliations"], ["blog" , "/blog"], ["contact" , "/contact"]]
end
