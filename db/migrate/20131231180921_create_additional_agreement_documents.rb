class CreateAdditionalAgreementDocuments < ActiveRecord::Migration
  def change
    create_table :additional_agreement_documents do |t|
      t.integer :additional_agreement_id, null: false
      t.string :file, null: false

      t.timestamps
    end

    add_index :additional_agreement_documents, :additional_agreement_id
  end
end
