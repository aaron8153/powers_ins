class CreateReferals < ActiveRecord::Migration
  def self.up
    create_table :referals do |t|
      t.string :name
      t.string :email
      t.string :friend_name
      t.string :friend_email
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :referals
  end
end
