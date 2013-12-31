class Operation < ActiveRecord::Base
  belongs_to :account, foreign_key: :debit_account_id
  belongs_to :account, foreign_key: :credit_account_id
end
