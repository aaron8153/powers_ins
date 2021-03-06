class CreateAssociates < ActiveRecord::Migration
  def self.up
    create_table :associates do |t|
      t.string :name
      t.string :email
      t.string :certifications
      t.string :title
      t.string :division
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :associates
  end
end
