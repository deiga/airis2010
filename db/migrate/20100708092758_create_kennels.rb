class CreateKennels < ActiveRecord::Migration
  def self.up
    create_table :kennels do |t|
      t.string :kennel_name
      t.string :owner_name
      t.string :phone
      t.string :location
      t.string :email
      t.string :homepage

      t.timestamps
    end
  end

  def self.down
    drop_table :kennels
  end
end
