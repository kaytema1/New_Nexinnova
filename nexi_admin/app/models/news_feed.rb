class NewsFeed < ActiveRecord::Base
  belongs_to :agent
  belongs_to :admin_user
end
