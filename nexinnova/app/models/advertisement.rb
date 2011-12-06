class Advertisement < ActiveRecord::Base
  attr_accessible :name, :link, :image
  has_attached_file :image
end
