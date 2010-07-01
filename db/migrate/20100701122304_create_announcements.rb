class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.boolean :notification, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :announcements
  end
end
