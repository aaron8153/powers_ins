class CreateAboutHeadings < ActiveRecord::Migration
  def self.up
    create_table :about_headings do |t|
      t.string :heading
      t.text :description
      t.string :page

      t.timestamps
    end
  end

  def self.down
    drop_table :about_headings
  end
end
