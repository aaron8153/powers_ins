class AddBenefitsToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :benefits, :boolean
  end

  def self.down
    remove_column :companies, :benefits
  end
end
