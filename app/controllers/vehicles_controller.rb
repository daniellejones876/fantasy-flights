class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def
    
  end
end
