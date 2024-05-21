class ShipsController < ApplicationController
  def index

  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship.user = current_user
    if @ship.save
      redirect_to ships_path(@ship)
    else
      render :new
    end

  end

  def show

  end

  def delete

  end


  private
  def ship_params
    params.require(:ship).permit(:name, :description, :price, :category, :address)

  end
end
