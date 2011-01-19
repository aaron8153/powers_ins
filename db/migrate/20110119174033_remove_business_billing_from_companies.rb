class RemoveBusinessBillingFromCompanies < ActiveRecord::Migration
  def self.up
  	remove_column :companies, :billing_number_two
  end

  def self.down
  end
end
