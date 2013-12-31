class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id, null: true
      t.decimal :balance, null: false, default: 0

      t.timestamps
    end

    add_index :accounts, :user_id
  end
end
