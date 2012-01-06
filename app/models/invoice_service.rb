class InvoiceService < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :service
  attr_writer :service_description
  def service_description
    service.description if service_id
  end
  accepts_nested_attributes_for :service, :reject_if => :all_blank
end
