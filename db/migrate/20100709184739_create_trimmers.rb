class CreateTrimmers < ActiveRecord::Migration
  def self.up
    create_table :trimmers do |t|
      t.string :name
      t.string :address
      t.string :ponumber
      t.string :location
      t.string :phone
      t.string :homepage

      t.timestamps
    end
  end

  def self.down
    drop_table :trimmers
  end
end
