class Booking < ApplicationRecord
  belongs_to :guest
  belongs_to :villa
end
