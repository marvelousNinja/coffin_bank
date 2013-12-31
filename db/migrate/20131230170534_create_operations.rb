class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :debit_account_id, null: false
      t.integer :credit_account_id, null: false
      t.decimal :sum, null: false, default: 0

      t.timestamps
    end

    add_index :operations, :debit_account_id
    add_index :operations, :credit_account_id
  end
end
