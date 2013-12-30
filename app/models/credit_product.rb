class CreditProduct < ActiveRecord::Base
  has_many :orders
end
