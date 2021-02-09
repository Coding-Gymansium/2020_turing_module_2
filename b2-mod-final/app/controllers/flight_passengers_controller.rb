class FlightPassengersController < ApplicationController
  def destroy
    relationship = FlightPassenger.find_by(passenger_id: params[:passenger_id], flight_id: params[:flight_id])
    relationship.destroy
    redirect_to "/flights"
  end
end