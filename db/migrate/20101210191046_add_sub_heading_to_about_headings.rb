class AddSubHeadingToAboutHeadings < ActiveRecord::Migration
  def self.up
  	add_column :about_headings, :subheading, :text
  end

  def self.down
  	remove_column :about_headings, :subheading
  end
end
