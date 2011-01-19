class RemoveBusBillingFromCompanies < ActiveRecord::Migration
  def self.up
  	remove_column :companies, :bus_billing
  end

  def self.down
  end
end
