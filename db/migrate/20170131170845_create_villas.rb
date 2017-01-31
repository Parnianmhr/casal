class CreateVillas < ActiveRecord::Migration[5.0]
  def change
    create_table :villas do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
