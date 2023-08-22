class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit destroy]
  before_action :set_vehicle, only: %i[new edit]

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    respond_to do |format|
      if @booking.save
        format.html { redirect_to vehicle_path(@vehicle), notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Booking was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
