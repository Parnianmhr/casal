class DropGuestsTable < ActiveRecord::Migration[5.0]
  def change
    execute "DROP TABLE #{:guests} CASCADE"
  end
end
