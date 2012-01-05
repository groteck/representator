class Invoice < ActiveRecord::Base
  has_and_belongs_to_many :services
  belongs_to :client
  belongs_to :user
  attr_accessor :client_legal_name
  def client_legal_name
    client.legal_name if client_id
  end
end
