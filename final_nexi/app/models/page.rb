class Page < ActiveRecord::Base
  attr_accessible :title
  has_many :articles
  has_many :ads
  
  def to_param
    "#{id}-#{title}"
  end

end
