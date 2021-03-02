class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @selected_flight = Flight.find(params[:flight_info])
        @passengers_count = params[:num_passengers].to_i
        @passengers_count.times { @booking.passengers.build }
    end

    def create
    end
end
