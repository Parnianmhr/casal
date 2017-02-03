Admin.delete_all
Booking.delete_all

#Admins
admin1 = Admin.create(email: "admin1@casalverde.eu", password: "abcd1234")
admin2 = Admin.create(email: "admin2@casalverde.eu", password: "efgh5678")

booking1 = Booking.create(starts_at: 2017-06-05, ends_at: 2017-06-11 00:00:00, price: 2499.00, total: 2499.00, prefix: "Mr.", first_name: "William", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create(starts_at: 2017-02-13, ends_at: 2017-02-19 00:00:00, price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
