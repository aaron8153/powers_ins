class RemovePhoneNumbersTable < ActiveRecord::Migration
  def self.up
  	drop_table :phone_numbers
  end

  def self.down
  end
end
