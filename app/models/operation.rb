class Operation < ActiveRecord::Base
  belongs_to :account, as: :debit_account
  belongs_to :account, as: :credit_account
end
