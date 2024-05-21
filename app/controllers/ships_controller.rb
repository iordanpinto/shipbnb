class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def new
    @ship = Ship.new
  end

  def create

  end

  def show
    @ship = Ship.find(params[:id])
  end

  def delete
    @ship = Ship.destroy(params[:id])
    redirect_to ships_path
  end

end
