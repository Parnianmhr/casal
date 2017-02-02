class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.save

    redirect_to booking_path, notice: "This is the notice in the bookingscontroller" 
  end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :number_of_guests, :prefix, :first_name,
    :last_name, :date_of_birth, :street_name, :house_number, :zipcode, :city_of_residence, :country_of_residence, :phone_number, :email_address)
  end
end
