class FlightsController < ApplicationController
    def index
        @flights = Flight.all
      end
    
      def new
        @flight = Flight.new
      end
    
      def create
        @flight = Flight.new(flight_params)
        @flight.save
        flash[:success] = "The flight was successfully created!"
        redirect_to root_path
      end

    private

    def flight_params
        params.require(:flight).permit(:from_airport_id, :to_airport_id, :duration, :scheduled_on)
    end

end
