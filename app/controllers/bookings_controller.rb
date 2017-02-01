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
    @booking = Booking.create(booking_params)

    if @booking.save

    redirect_to new_booking_path, notice: "Fill out your personal details here!"

    else

    render :show

    end
  end


  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
