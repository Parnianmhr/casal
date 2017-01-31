class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.text :text_field1
      t.text :text_field2
      t.string :text_field3.text
      t.string :text_field4.text
      t.string :text_field5.text
      t.string :text_field6.text
      t.string :text_field7.text
      t.string :image_field1.string
      t.string :image_field2.string
      t.string :image_field3.string
      t.string :image_field4.string
      t.string :image_field5.string
      t.string :image_field6.string
      t.string :image_field7.string
      t.string :image_field8.string

      t.timestamps
    end
  end
end
