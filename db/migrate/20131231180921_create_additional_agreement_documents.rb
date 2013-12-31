class CreateAdditionalAgreementDocuments < ActiveRecord::Migration
  def change
    create_table :additional_agreement_documents do |t|
      t.integer :additional_agreement_id
      t.string :file

      t.timestamps
    end
  end
end
