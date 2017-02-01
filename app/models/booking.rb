class Booking < ApplicationRecord
  belongs_to :guest
  belongs_to :villa

  def set_total_price
    self.price = villa.price
    total_days = (ends_at.to_date - starts_at.to_date).to_i
    self.total = price * total_days
  end

  def villa_available?
    villa.available? starts_at, ends_at
  end


  private
  def check_in_times
  end


end
