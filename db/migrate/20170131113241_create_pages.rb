class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.text :text_field1
      t.text :text_field2
      t.text :text_field3
      t.text :text_field4
      t.text :text_field5
      t.text :text_field6
      t.text :text_field7
      t.string :image_field1
      t.string :image_field2
      t.string :image_field3
      t.string :image_field4
      t.string :image_field5
      t.string :image_field6
      t.string :image_field7
      t.string :image_field8

      t.timestamps
    end
  end
end
