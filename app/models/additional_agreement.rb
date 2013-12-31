class AdditionalAgreement < ActiveRecord::Base
  belongs_to :contract
  has_many :additional_agreement_documents
end
