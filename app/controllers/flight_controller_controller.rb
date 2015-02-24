class FlightControllerController < ApplicationController
  def index
  	@flights = Flight.all
  end
end



