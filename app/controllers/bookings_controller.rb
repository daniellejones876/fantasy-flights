class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit destroy]
  before_action :set_vehicle, only: %i[new edit]

  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
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
    params.require(:booking).permit(:user_id, :vehicle_id, :start_date, :end_date, :status)
  end
end
