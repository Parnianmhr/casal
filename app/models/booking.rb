class Booking < ApplicationRecord
  belongs_to :guest
  belongs_to :villa

  before_create :set_check_in_times

  def.self.during arrival, departure
    arrival = arrival.change(hour: 14, min: 00)
    departure = departure.change(hour: 10, min: 00)
    starts_before_ends_after(arrival, departure).or(ends_during(arrival, departure)).or(starts_during(arrival, departure))

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


  private
  def check_in_times
    self.starts_at = starts_at.change(hour: 14, min: 00)
    self.ends_at = ends_at.change(hour: 10, min: 00)
  end


end
