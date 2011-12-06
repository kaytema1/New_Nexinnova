class CreateAdvertisements < ActiveRecord::Migration
  def self.up
    create_table :advertisements do |t|
      t.string :name
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :advertisements
  end
end
