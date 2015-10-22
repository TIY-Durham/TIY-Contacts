class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.integer :contact_id
      t.string :phone_number
      t.string :phone_type

      t.timestamps null: false
    end
  end
end
