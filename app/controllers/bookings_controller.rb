class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

    before_filter :authorize #makes the person/admin log in first
  end

# Villa Model
  # def create
  #   @booking = Booking.new(booking_params)
  #
  #   if @booking.villa_available?
  #     # @booking.set_total_price
  #     @booking.save
  #     redirect_to @booking, notice: "Thank you for booking!"
  #   else
  #     redirect_to @booking, notice: "Sorry! This listing is not available during the dates you requested."
  #   end
  # end


  def create
    @booking = Booking.new(booking_params)

    if
      @booking.available?(@booking.starts_at, @booking.ends_at)
      # @booking.set_total_price
      @booking.save
      redirect_to @booking, notice: "Thank you for your request! You will receive an email from us within 5 days."
    else
      redirect_to @booking, notice: "Sorry! Cas'al Verde is not available during the dates you requested. Available booking dates can be seen on the calender."
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  # def get_dates(booking_params)
  #   starts_at = Datetime.new(booking_params["starts_at(1i)"])
  #   ends_at = Datetime.new(booking_params["ends_at(1i)"])
  #     return starts_at, ends_at
  # end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :number_of_guests, :prefix, :first_name,
    :last_name, :date_of_birth, :street_name, :house_number, :zipcode, :city_of_residence, :country_of_residence, :phone_number, :email_address)
  end
end
