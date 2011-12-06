class Page < ActiveRecord::Base
  attr_accessible :name, :description, :permalink
  has_many :articles
  def to_param
    "#{id}-#{permalink}"
  end
end
