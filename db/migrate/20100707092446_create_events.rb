class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :startdate
      t.integer :duration, :default => 1
      t.text :description
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
