class Newsfeed < ActiveRecord::Base
  attr_accessible :hit, :content, :source
end
