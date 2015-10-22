class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|
      t.integer :contact_id
      t.string :email_address
      t.string :email_type

      t.timestamps null: false
    end
  end
end
