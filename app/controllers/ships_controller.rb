class ShipsController < ApplicationController
  def index

  end

  def new
    @ship = Ship.new
  end

  def create

  end

  def show

  end

  def delete
    @ship = Ship.destroy(params[:id])
    redirect_to ships_path
  end

end
