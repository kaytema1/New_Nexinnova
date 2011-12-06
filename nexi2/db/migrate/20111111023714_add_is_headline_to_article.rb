class AddIsHeadlineToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :is_headline, :boolean
  end
end
