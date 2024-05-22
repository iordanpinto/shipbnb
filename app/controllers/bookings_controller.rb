class BookingsController < ApplicationController
  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.ship = @ship
    @booking.status = "pending"
    if @booking.save
      redirect_to ship_path(@booking), notice: "Your Booking is Confirmed!!"
    else
      render :ships, status: :unprocessable_entity
    end
  end

    private

  def booking_params
    params.require(:booking).permit(:ship_id, :start_date, :end_date)
  end
end
