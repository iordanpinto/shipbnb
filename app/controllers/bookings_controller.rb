class BookingsController < ApplicationController
  # def index
  #   @user = current_user
  #   @bookings = Booking.all
  # end

  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.ship = @ship
    @booking.status = "pending"
    if @booking.save
      redirect_to root_path(@booking), notice: "Your Booking is Confirmed!!"
    else
      render :ships, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end

    private

  def booking_params
    params.require(:booking).permit(:ship_id, :start_date, :end_date)
  end
end
