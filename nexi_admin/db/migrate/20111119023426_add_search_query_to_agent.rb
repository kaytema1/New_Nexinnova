class AddSearchQueryToAgent < ActiveRecord::Migration
  def change
    add_column :agents, :search_query, :string
  end
end
