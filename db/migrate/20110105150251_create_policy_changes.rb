class CreatePolicyChanges < ActiveRecord::Migration
  def self.up
    create_table :policy_changes do |t|
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
      t.date :change_date
      t.text :description
      t.text :misc
      t.string :division

      t.timestamps
    end
  end

  def self.down
    drop_table :policy_changes
  end
end
