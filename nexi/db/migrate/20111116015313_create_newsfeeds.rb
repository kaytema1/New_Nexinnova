class CreateNewsfeeds < ActiveRecord::Migration
  def self.up
    create_table :newsfeeds do |t|
      t.string :hit
      t.text :content
      t.string :source
      t.timestamps
    end
  end

  def self.down
    drop_table :newsfeeds
  end
end
