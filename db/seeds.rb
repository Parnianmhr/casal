Admin.delete_all
Booking.delete_all
Season.delete_all

#Admins
admin1 = Admin.create(email: "admin1@casalverde.eu", password: "abcd1234")
admin2 = Admin.create(email: "admin2@casalverde.eu", password: "efgh5678")

booking1 = Booking.create!(starts_at: 2017-06-05, ends_at: 2017-06-11, price: 2499.00, total: 2499.00, prefix: "Mr.", first_name: "William", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: 2017-02-13, ends_at: 2017-02-19, price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")

season1 = Season.create!(start: "2016-10-29", end: "2017-04-01", basic_price: 1499.00, extra_price: 140.00, service: 500.00, discount: 0.10 )
season2 = Season.create!(start: "2017-04-02", end: "2017-06-24", basic_price: 2499.00, extra_price: 140.00, service: 500.00, discount: 0.10 )
season3 = Season.create!(start: "2017-06-25", end: "2017-09-02", basic_price: 2999.00, extra_price: 140.00, service: 500.00, discount: 0.10 )
season4 = Season.create!(start: "2017-09-03", end: "2017-11-04", basic_price: 2499.00, extra_price: 140.00, service: 500.00, discount: 0.10 )
