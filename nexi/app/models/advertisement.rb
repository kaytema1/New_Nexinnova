class Advertisement < ActiveRecord::Base
  attr_accessible :image, :permalink
  has_attached_file :image
end
