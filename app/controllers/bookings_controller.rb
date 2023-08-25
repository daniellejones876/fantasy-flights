class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy approve_booking]
  before_action :set_vehicle, only: %i[new edit destroy create]

  def new
    @booking = Booking.new
  end

  def approve_booking
    redirect_to dashboard_path, notice: 'Booking was successfully approved!', status: :see_other if @booking.update!(status: "Approved")
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    booking_duration = (@booking.end_date - @booking.start_date).to_i

    respond_to do |format|
      if booking_duration.zero?
        format.html { redirect_to vehicle_path(@vehicle), alert: 'Your booking needs to last longer than one day!' }
      elsif booking_duration < @booking.vehicle.min_days.to_i
        format.html { redirect_to vehicle_path(@vehicle), alert: "This booking needs to be longer than #{@booking.vehicle.min_days} days!" }
      elsif @booking.save
        format.html { redirect_to dashboard_path, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { redirect_to vehicle_path(@vehicle), status: :unprocessable_entity }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    if @booking.update(booking_params)
      redirect_to dashboard_path, notice: 'Booking was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Booking was cancelled successfully!' }
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
    params.require(:booking).permit(:start_date, :end_date, :vehicle_id, :user_id)
  end
end
