class Booking < ApplicationRecord
  belongs_to :guest

  def set_total_price
    # self.price = booking.price
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
