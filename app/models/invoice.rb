class Invoice < ActiveRecord::Base
  has_many :invoice_services
  has_many :services, :through => :invoice_service
  belongs_to :client
  belongs_to :user
  attr_writer :client_legal_name
  def client_legal_name
    client.legal_name if client_id
  end
  accepts_nested_attributes_for :services, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :invoice_services
end
