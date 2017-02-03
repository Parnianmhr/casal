Admin.delete_all
Booking.delete_all
Season.delete_all

#Admins
admin1 = Admin.create(name: "admin1", email: "admin1@casalverde.eu", password: "abcd1234")
admin2 = Admin.create(name: "admin2", email: "admin2@casalverde.eu", password: "efgh5678")




booking1 = Booking.create!(starts_at: "2017-1-1", ends_at: "2017-1-9", price: 2499.00, total: 2499.00, prefix: "Mr.", first_name: "William", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-2-13", ends_at: "2017-2-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-3-13", ends_at: "2017-3-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Hiha", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking1 = Booking.create!(starts_at: "2017-4-5", ends_at: "2017-4-11", price: 2499.00, total: 2499.00, prefix: "Mr.", first_name: "William", last_name: "Beedy", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-5-13", ends_at: "2017-5-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Chica", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-7-13", ends_at: "2017-6-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Lalala", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking1 = Booking.create!(starts_at: "2017-8-05", ends_at: "2017-7-11", price: 2499.00, total: 2499.00, prefix: "Mr.", first_name: "William", last_name: "Jansen", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-9-13", ends_at: "2017-8-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Ridge", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")
booking2 = Booking.create!(starts_at: "2017-10-13", ends_at: "2017-9-19", price: 1499.00, total: 1499.00, prefix: "Mrs.", first_name: "Cathy", last_name: "Windsor", number_of_guests: 8, country_of_residence: "United Kingdom", street_name: "Kensington Gardens", house_number: "", zipcode: "W8 4PX")


season1 = Season.create!(start: "2016-10-29", end: "2017-04-01", basic_price: 1499.00, extra_price: 140.00, service: 500.00, discount: 0.10, name: "Low season" )
season2 = Season.create!(start: "2017-04-02", end: "2017-06-24", basic_price: 2499.00, extra_price: 140.00, service: 500.00, discount: 0.10, name: "Pre season")
season3 = Season.create!(start: "2017-06-25", end: "2017-09-02", basic_price: 2999.00, extra_price: 140.00, service: 500.00, discount: 0.10, name: "High season")
season4 = Season.create!(start: "2017-09-03", end: "2017-11-04", basic_price: 2499.00, extra_price: 140.00, service: 500.00, discount: 0.10, name: "After summer season")
