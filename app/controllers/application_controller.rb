class ApplicationController < ActionController::Base
	protect_from_forgery
	
	$tabs = [["home" , "/"], ["associates" , "/associates"], ["affiliations" , "/affiliations"], ["carriers" , "/carriers"],["about" , "/aboutus"]]
	$tickers = Ticker.all
end
