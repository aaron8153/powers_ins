class AddGroupBenefitsToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :benefits_group, :boolean
  end

  def self.down
    remove_column :companies, :benefits_group
  end
end
