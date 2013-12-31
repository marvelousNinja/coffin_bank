class Contract < ActiveRecord::Base
  belongs_to :order
  has_many :additional_agreements
  has_many :contract_documents
end
