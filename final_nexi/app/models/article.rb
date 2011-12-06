class Article < ActiveRecord::Base
  attr_accessible :title, :author, :content, :image, :page_id, :tag, :source
  has_many :comments
  belongs_to :page
  has_attached_file :image
  
  
  def to_param
    "#{id}-#{title}"
  end

end
