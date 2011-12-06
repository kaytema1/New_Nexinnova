class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :image
      t.integer :page_id
      t.string :tag
      t.string :source
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
