class CreateAdditionalAgreements < ActiveRecord::Migration
  def change
    create_table :additional_agreements do |t|
      t.integer :contract_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
