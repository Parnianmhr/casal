class Booking < ApplicationRecord
  belongs_to :villa

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :country, presence: true
  validates :street_name, presence: true
  validates :house_number, presence: true
  validates :zipcode, presence: true
  validates :city_of_residence, presence: true
  validates :country_of_residence, presence: true
  validates :phone_number, presence: true
  validates :email_address, presence: true

  def set_total_price
    self.price = villa.price
    total_days = (ends_at.to_date - starts_at.to_date).to_i
    self.total = price * total_days
  end

  def available?(checkin, checkout)
    bookings.each do |booking|
      if (booking.starts_at <= checkout) && (booking.ends_at >= checkin)
        return false
      end
    end

    true
  end

  private
  def check_in_times
  end


end
