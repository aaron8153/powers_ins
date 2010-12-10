class ApplicationController < ActionController::Base
	protect_from_forgery
	
	$tabs = [["associates" , "/associates"], ["affiliations" , "/affiliations"], ["aboutus" , "/aboutus"],["blog" , "/blog"]]
	$tickers = Ticker.all
end
