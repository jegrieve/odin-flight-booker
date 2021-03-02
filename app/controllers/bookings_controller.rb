class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @selected_flight = Flight.find(params[:flight_id])
        @passengers_count = params[:num_passengers].to_i
        @passengers_count.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.create(booking_params)
          redirect_to booking_path(@booking)
      end

      def show
        @booking = Booking.find(params[:id])
      end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
      end
end
