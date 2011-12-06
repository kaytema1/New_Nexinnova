class Ad < ActiveRecord::Base
  attr_accessible :image, :permalink, :page_id
  belongs_to :page
  has_attached_file :image

end
