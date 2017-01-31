class Guest < ApplicationRecord
  has_many :bookings

  validates :first_name, presence: true,
  validates :last_name, presence: true
  validates :date_of_birth. presence: true
  validates :country, presence: true
  validates :street, presence: true
  validates :street_number, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :phone_number, presence: true
  validates :email_address, presence: true

end
