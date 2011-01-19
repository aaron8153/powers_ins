class CreateConsults < ActiveRecord::Migration
  def self.up
    create_table :consults do |t|
      t.string :name
      t.string :email
      t.string :street_address
      t.string :street_address_cont
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_home
      t.string :phone_work
      t.text :insurance_type

      t.timestamps
    end
  end

  def self.down
    drop_table :consults
  end
end
