class Contact < ActiveRecord::Base
  has_many :phone_numbers
  has_many :email_addresses

  def as_json(arg)
    {id: id,
     first_name: first_name,
     last_name: last_name,
     email_addresses: email_addresses.map do |e|
       {
         id: e.id,
         email_address: e.email_address,
         email_type: e.email_type
       }

     end
    }
  end
end
