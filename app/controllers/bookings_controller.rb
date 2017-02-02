class BookingsController < ApplicationController

  def index
    @bookings = Booking.all(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = bookings.new(booking_params)

    if
      @booking.available?
      @booking.set_total_price
      @booking.save
      redirect_to @booking.room, notice: "Thank you for your request! You will receive an email from us within 5 days."
    else
      redirect_to @booking.room, notice: "Sorry! Cas'al Verde is not available during the dates you requested. Available booking dates can be seen on the calender."
    end
  end
  
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :number_of_guests, :prefix, :first_name,
    :last_name, :date_of_birth, :street_name, :house_number, :zipcode, :city_of_residence, :country_of_residence, :phone_number, :email_address)
  end
end
