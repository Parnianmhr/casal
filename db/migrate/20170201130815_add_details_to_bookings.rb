class AddDetailsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :number_of_guests, :integer
    add_column :bookings, :prefix, :string
    add_column :bookings, :first_name, :string
    add_column :bookings, :last_name, :string
    add_column :bookings, :date_of_birth, :date
    add_column :bookings, :street_name, :string
    add_column :bookings, :house_number, :integer
    add_column :bookings, :zipcode, :string
    add_column :bookings, :city_of_residence, :string
    add_column :bookings, :country_of_residence, :string
    add_column :bookings, :phone_number, :string
    add_column :bookings, :email_address, :string
  end
end
