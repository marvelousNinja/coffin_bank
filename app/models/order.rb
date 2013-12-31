class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :credit_product
  has_one :contract
end
