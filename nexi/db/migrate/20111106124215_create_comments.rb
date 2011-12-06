class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.integer :article_id

      t.timestamps
    end
  end
end
