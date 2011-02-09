class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :phone_work
      t.string :phone_home
      t.string :street_address
      t.string :street_address_cont
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :home
      t.boolean :auto
      t.boolean :condo
      t.boolean :boat
      t.boolean :motor
      t.boolean :renters
      t.boolean :motorcycle
      t.boolean :other
      t.string :othertxt

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
