class BookingsController < ApplicationController

  def index
    @bookings = Booking.all(params[:id])
    @booking = Booking.new
    @guest = Guest.new
  end

  def create
    @booking = bookings.new(booking_params)

    if
      @booking.available?
      @booking.set_total_price
      @booking.save
      redirect_to @booking.room, notice: "Thank you for request! You will receive an emailn from us within 5 days."
    else
      redirect_to @booking.room, notice: "Sorry! Cas'al Verde is not available during the dates you requested. Available booking dates can be seen on the calender."
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
