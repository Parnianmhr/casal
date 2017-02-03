class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
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

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if Booking.available?(@booking.starts_at, @booking.ends_at)
      # @booking.set_total_price 
      @booking.save
      redirect_to bookings_path(@booking.id)
    else
      redirect_to @booking, notice: "Sorry! Cas'al Verde is not available during the dates you requested. Available booking dates can be seen on the calender."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :number_of_guests, :prefix, :first_name,
    :last_name, :date_of_birth, :street_name, :house_number, :zipcode, :city_of_residence, :country_of_residence, :phone_number, :email_address)
  end
end
