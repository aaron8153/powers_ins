class AddHomeAutoFieldsToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :homeauto_claim_url, :string
    add_column :companies, :homeauto_billing_url, :string
    add_column :companies, :homeauto_claim_number_one, :string
    add_column :companies, :homeauto_claim_number_two, :string
    add_column :companies, :homeauto_billing_number_one, :string
    add_column :companies, :homeauto_billing_number_two, :string
  end

  def self.down
    remove_column :companies, :homeauto_billing_number_two
    remove_column :companies, :homeauto_billing_number_one
    remove_column :companies, :homeauto_claim_number_two
    remove_column :companies, :homeauto_claim_number_one
    remove_column :companies, :homeauto_billing_url
    remove_column :companies, :homeauto_claim_url
  end
end
