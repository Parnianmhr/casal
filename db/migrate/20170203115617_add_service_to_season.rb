class AddServiceToSeason < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :service, :decimal
  end
end
