class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.date :start
      t.date :end
      t.decimal :basic_price
      t.decimal :extra_price
      t.decimal :discount

      t.timestamps
    end
  end
end
