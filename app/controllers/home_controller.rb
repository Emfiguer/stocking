class HomeController < ApplicationController
  def index
  	@api = StockQuote::Stock.new(api_key: 'pk_4e5ce95c037e49fc9bb55182a08892fc')
  	if params[:ticker] == ""
  		@nothing = "You forgot to enter a symbol"
  	elsif params[:ticker]
  			@stock = StockQuote::Stock.quote(params[:ticker])
  			if !@stock
  				@error = "Error that stock symbol doesn't exist, try other"
  			end
  	end
  end

  def about
  end
end
