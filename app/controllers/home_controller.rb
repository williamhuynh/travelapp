class HomeController < ApplicationController
  def index
  	@topitineraries = Itinerary.all.limit(6)
  end
end
