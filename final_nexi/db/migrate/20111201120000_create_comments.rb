class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.belongs_to :article # creates a new integer column named article_id  
      t.timestamps
    end
  end
end
