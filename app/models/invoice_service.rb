class InvoiceService < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :service
end
