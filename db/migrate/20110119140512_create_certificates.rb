class CreateCertificates < ActiveRecord::Migration
  def self.up
    create_table :certificates do |t|
      t.string :name
      t.string :email
      t.string :street_address
      t.string :street_address_cont
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_home
      t.string :phone_work
      t.string :policy_number
      t.string :insurance_type
      t.string :certificate_holder
      t.string :bus_address
      t.string :bus_address_cont
      t.string :bus_city
      t.string :bus_state
      t.string :bus_zip
      t.string :bus_fax
      t.text :misc

      t.timestamps
    end
  end

  def self.down
    drop_table :certificates
  end
end
