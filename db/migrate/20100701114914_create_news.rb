class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :title
      t.text :description
      t.boolean :notification, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
