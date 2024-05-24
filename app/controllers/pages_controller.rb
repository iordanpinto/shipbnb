class PagesController < ApplicationController
  def dashboard
    @user = current_user
    @ships = current_user.ships
    @bookings = current_user.bookings
    ship_ids = @ships.pluck(:id)
    @ships_bookings = Booking.where(ship_id: ship_ids )
    #  @bookings = @user.bookings.all
  #   # # OPTIONAL
  #   #
  #   # # OPTIONAL
  #   @ships.each do |ship|
  #     ship.bookings.each do |booking|
  end
end
