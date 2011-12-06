class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :geo_region
      t.text :content
      t.integer :page_id
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
