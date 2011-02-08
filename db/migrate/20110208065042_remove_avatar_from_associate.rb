class RemoveAvatarFromAssociate < ActiveRecord::Migration
  def self.up
  	remove_column :associates, :avatar_file_name
    remove_column :associates, :avatar_content_type
    remove_column :associates, :avatar_file_size
    remove_column :associates, :avatar_updated_at
  end

  def self.down
  	add_column :associates, :avatar_file_name
    add_column :associates, :avatar_content_type
    add_column :associates, :avatar_file_size
    add_column :associates, :avatar_updated_at
  end
end
