class Service < ActiveRecord::Base
  has_many :invoice_services
  has_many :invoice, :through => :invoice_services
end
