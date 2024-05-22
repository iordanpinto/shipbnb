class ShipsController < ApplicationController
  def index
    @ships = Ship.all
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
    params.require(:ship).permit(:name, :description, :price, :category, :address)
  end
end
