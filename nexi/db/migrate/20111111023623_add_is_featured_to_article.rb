class AddIsFeaturedToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :is_featured, :boolean
  end
end
