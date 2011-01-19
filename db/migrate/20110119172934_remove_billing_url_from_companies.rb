class RemoveBillingUrlFromCompanies < ActiveRecord::Migration
  def self.up
  	remove_column :companies, :billing_url
  	remove_column :companies, :billing_number_one
  end

  def self.down
  end
end
