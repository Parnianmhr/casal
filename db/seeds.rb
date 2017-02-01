Booking.delete_all
Admins.delete.all
Users.delete.all
Villas.delete.all

# Bookings
booking1 = Booking.create(starts_at: 2017-06-05 ,ends_at: 2017-06-11 ,price: 2499,00, total: 2499,00)
booking2 = Booking.create(starts_at: 2017-02-13 ,ends_at: 2017-02-19 ,price: 1499,00, total: 1499,00)

# Admins
admin1 = Admin.create(email: "admin1@casalverde.eu", password: "abcd1234")
admin2 = Admin.create(email: "admin2@casalverde.eu", password: "abcd1234")

# Guests
guest1 = Guest.create(salutation: "Mr.", first_name: "William", insertion: "", last_name: "Windsor", date_of_birth: 1982-06-21, country: "United Kingdom", street: "Kensington Gardens", street_number: "", zipcode: "W8 4PX", city: "London", phone_number: "+44 20 3166 6000",email_address: "bill@royal-couple.uk" )
guest2 = Guest.create(salutation: "Mrs.", first_name: "Catherine", insertion: "", last_name:"Windsor", date_of_birth: 1982-01-09 ,country: "United Kingdom", street: "Kensington Gardens", street_number: "", zipcode: "W8 4PX", city: "London", phone_number: "+44 20 3166 6000", email_address: "kate@royal-couple.uk")

# Villa
villa1 = Villa.create(price: 1499,00 )
villa2 = Villa.create(price: 2499,00)
villa3 = Villa.create(price: 2999,00)
villa4 = Villa.create(price: 2499,00)
