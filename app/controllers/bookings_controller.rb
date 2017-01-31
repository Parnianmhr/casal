class BookingsController < ApplicationController

  def index
    @booking = Booking.new
    @guest = Guest.new
  end

  def create
    @booking = Booking.new

    redirect_to bookings_path, notice: "Thank you for your booking!"
  end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
