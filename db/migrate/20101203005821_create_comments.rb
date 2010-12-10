class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :poster
      t.text :description
      t.references :blog

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
