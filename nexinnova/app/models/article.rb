class Article < ActiveRecord::Base
  attr_accessible :title, :author, :permalink, :content, :page_id, :region, :category, :image

  has_attached_file :image

  belongs_to :page
  def to_param
    "#{id}-#{permalink}"
  end

end
