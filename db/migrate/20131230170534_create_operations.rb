class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :id
      t.integer :debit_account_id
      t.integer :credit_account_id
      t.decimal :sum

      t.timestamps
    end
  end
end
