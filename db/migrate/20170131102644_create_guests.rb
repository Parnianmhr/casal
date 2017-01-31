class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :salutation
      t.string :first_name
      t.string :insertion
      t.string :last_name
      t.date :date_of_birth
      t.string :country
      t.string :street
      t.string :street_number
      t.string :zipcode
      t.string :city
      t.string :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
