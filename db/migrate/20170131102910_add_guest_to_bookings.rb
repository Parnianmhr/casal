class AddGuestToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :guest, foreign_key: true
  end
end
