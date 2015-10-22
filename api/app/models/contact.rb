class Contact < ActiveRecord::Base
  has_many :phone_numbers
  has_many :email_addresses
end
