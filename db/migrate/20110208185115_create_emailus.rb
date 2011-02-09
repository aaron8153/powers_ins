class CreateEmailus < ActiveRecord::Migration
  def self.up
    create_table :emailus do |t|
      t.string :name
      t.string :email
      t.string :phone_work
      t.string :phone_home
      t.string :insurance_type
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :emailus
  end
end
