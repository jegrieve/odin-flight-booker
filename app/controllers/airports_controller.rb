class AirportsController < ApplicationController
    def index
        @airports = Airport.all
    end

    def new
        @aiport = Airport.new
    end

    def create
        @airport.new(airport_params)
        @airport.save
        flash[:success] = "Airport #{@airport.code} has been successfully created!"
        redirect to root_path
    end

    private
    def airport_params
        params.require(:airport).permit(:code)
    end
end
