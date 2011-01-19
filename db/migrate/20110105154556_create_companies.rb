class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :claim_url
      t.string :billing_url
      t.boolean :bus_claim
      t.boolean :bus_billing
      t.boolean :homeauto_claim
      t.boolean :homeauto_billing
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.datetime :logo_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
