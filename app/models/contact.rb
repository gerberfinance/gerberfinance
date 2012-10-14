class Contact < ActiveRecord::Base
  attr_accessible :company_name, :email, :name, :reason, :telephone
end
