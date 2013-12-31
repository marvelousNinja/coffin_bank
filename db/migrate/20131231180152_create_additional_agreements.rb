class CreateAdditionalAgreements < ActiveRecord::Migration
  def change
    create_table :additional_agreements do |t|
      t.integer :contract_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps
    end

    add_index :additional_agreements, :contract_id
  end
end
