class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @airport_options = Airport.all.map {|airport| [airport.code, airport.id]}
        @passenger_options = [['1',1],['2',2],['3',3],['4',4]]
        @year_options = Flight.all.map { |flight| flight.scheduled_on.year }.uniq
        @month_options = Flight.all.map { |flight| flight.scheduled_on.month }.uniq
        @day_options = Flight.all.map { |flight| flight.scheduled_on.day }.uniq
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
