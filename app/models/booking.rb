class Booking < ApplicationRecord
  belongs_to :villa

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :street_name, presence: true
  validates :house_number, presence: true
  validates :zipcode, presence: true
  validates :city_of_residence, presence: true
  validates :country_of_residence, presence: true
  validates :phone_number, presence: true
  validates :email_address, presence: true

  before_create :set_check_in_times

  def self.during arrival, departure
    arrival = arrival.change(hour: 14, min: 00)
    departure = departure.change(hour: 10, min: 00)
    starts_before_ends_after(arrival, departure).or(ends_during(arrival, departure)).or(starts_during(arrival, departure))
  end

  def set_total_price
    self.price = villa.price
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

  def villa_available?
    villa.available? starts_at, ends_at
  end



  def get_dates(booking_params)
    checkin = Date.new(booking_params["starts_at(1i)"].to_i,
    booking_params["starts_at(2i)"].to_i,
    booking_params["starts_at(3i)"].to_i)

    checkout = Date.new(booking_params["ends_at(1i)"].to_i,
    booking_params["ends_at(2i)"].to_i,
    booking_params["ends_at(3i)"].to_i)
      return checkin, checkout
  end

  def check_season(checkin, checkout)
    villa.each do |booking|
    if (booking.starts_at <= checko) && (booking.ends_at >= checkin)
      return false
    end
  end





  def check_season
    @villa.each do |season|
      if ('starts_at > 2016.10.28 AND starts_at < 2017.4.1', arrival, arrival)
        @season = {season: "1"}
      end

      elsif ('starts_at > 2017.4.2 AND starts_at > 2017.6.24', arrival, arrival)
        @season = {season: "2"}
      end

      elsif ('starts_at > 2017.6.24 AND 'starts_at' > 2017.6.25', arrival, arrival)
        @season = {season: "3"}end
      end

      elsif ('starts_at > 2016.9.2 AND starts_at > 2017.11.4', arrival, arrival)
        @season = {season: "4"}
      end

      else
      puts "wrong input"
      redirect_to bookings_path
      end
  end





  private
  def check_in_times
    self.starts_at = starts_at.change(hour: 14, min: 00)
    self.ends_at = ends_at.change(hour: 10, min: 00)
  end


end
