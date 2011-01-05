class CreateAutoIds < ActiveRecord::Migration
  def self.up
    create_table :auto_ids do |t|
      t.string :name
      t.string :email
      t.string :street_address
      t.string :street_address_cont
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_work
      t.string :phone_home
      t.string :policy_number
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.string :vin
      t.text :misc
      t.string :division

      t.timestamps
    end
  end

  def self.down
    drop_table :auto_ids
  end
end
