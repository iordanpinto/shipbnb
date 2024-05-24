class ShipsController < ApplicationController

  def index
    @ships = Ship.all

    # The `geocoded` scope filters only ships with coordinates
    @markers = @ships.geocoded.map do |ship|
      {
        lat: ship.latitude,
        lng: ship.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {ship: ship}),
        marker_html: render_to_string(partial: "marker", locals: {ship: ship})
      }
    end
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship.user = current_user
    if @ship.save
      redirect_to ships_path, notice: "Your Ship is Confirmed!!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @ship = Ship.find(params[:id])
    @booking = Booking.new
  end

  def delete
    @ship = Ship.destroy(params[:id])
    redirect_to ships_path
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :description, :price, :category, :address, :photo)

  end
end
