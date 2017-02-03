class Booking < ApplicationRecord



  #
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :date_of_birth, presence: true
  # validates :street_name, presence: true
  # validates :house_number, presence: true
  # validates :zipcode, presence: true
  # validates :city_of_residence, presence: true
  # validates :country_of_residence, presence: true
  # validates :phone_number, presence: true
  # validates :email_address, presence: true

  # before_create :set_check_in_times

  # def villa_available?
  #   villa.available? starts_at, ends_at
  # end


  def self.during arrival, departure
    arrival = arrival.change(hour: 14, min: 00)
    departure = departure.change(hour: 10, min: 00)
    starts_before_ends_after(arrival, departure).or(ends_during(arrival, departure)).or(starts_during(arrival, departure))
  end

  def self.set_total_price
    self.price = booking.price
    total_days = (ends_at.to_date - starts_at.to_date).to_i
    self.total = price * total_days
  end

  def self.starts_before_ends_after arrival, departure
    where('starts_at < ? AND ends_at > ?', arrival, departure)
  end

  def self.starts_during arrival, departure
    where('starts_at > ? AND starts_at < ?', arrival, departure)
  end

  def self.ends_during arrival, departure
    where('ends_at > ? AND ends_at < ?', arrival, departure)
  end


  def self.available?(arrival, departure)
    all.each do |booking|
      if (booking.starts_at <= arrival) && (booking.ends_at >= departure)
        return false
      end
    end

    true
  end

  # def available?(starts_at, ends_at)
  #   @bookings.each do |booking|
  #     if (booking.starts_at <= ends_at) && (booking.start_date >= starts_at)
  #       return false
  #     end
  #   end
  #
  #   true
  # end

  # def booking_available?
  #   booking.available? starts_at, ends_at
  # end

  # def get_dates(booking_params)
  #   checkin = Date.new(booking_params["starts_at(1i)"].to_i)
  #   checkout = Date.new(booking_params["ends_at(1i)"].to_i)
  #     return checkin, checkout
  # end


  private
  def check_in_times
    self.starts_at = starts_at.change(hour: 14, min: 00)
    self.ends_at = ends_at.change(hour: 10, min: 00)
  end



end
