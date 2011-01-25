class AddPositionNumberToAssociates < ActiveRecord::Migration
  def self.up
    add_column :associates, :position, :integer
  end

  def self.down
    remove_column :associates, :position
  end
end
