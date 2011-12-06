ActiveAdmin.register NewsFeed do
  
  
    # Filter only by title
  filter :title
  filter :keyword
  filter :source
  filter :country
end
