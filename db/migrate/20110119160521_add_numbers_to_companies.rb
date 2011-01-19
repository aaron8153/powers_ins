class AddNumbersToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :claim_number_one, :string
    add_column :companies, :claim_number_two, :string
    add_column :companies, :billing_number_one, :string
    add_column :companies, :billing_number_two, :string
  end

  def self.down
    remove_column :companies, :billing_number_two
    remove_column :companies, :billing_number_one
    remove_column :companies, :claim_number_two
    remove_column :companies, :claim_number_one
  end
end
