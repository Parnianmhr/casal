class BookingsController < ApplicationController

  def index
  end

  def new
    @booking = Booking.new
    @guest = Guest.new
  end

  def show
  end

  def create
    @guest = Guest.create(guest_params)
    @booking = @guest.bookings.create(guest_params)

    if @booking.save
      redirect_to root_path, notice: "Thank you for your booking!"
    else
      render :new
    end
  end


  private

  def guest_params
    params.require(:guest).permit(:salutation, :first_name, :insertion, :last_name, :date_of_birth,
    :country, :street, :street_number, :zipcode, :city, :phone_number, :email_address)
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :price, :total, :guest_id)
  end
end
