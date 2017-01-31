class AddVillaToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :villa, foreign_key: true
  end
end
