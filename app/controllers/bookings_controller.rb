class BookingsController < ApplicationController
  def create
    @ship = Ship.find(:ship_id)
    @booking = Booking.new(booking_params)
    @booking.ship = @ship
    @booking.save
    redirect_to ship_path(@booking)
  end

    private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
