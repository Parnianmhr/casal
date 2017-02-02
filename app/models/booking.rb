class Booking < ApplicationRecord

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


end
