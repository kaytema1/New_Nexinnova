class Comment < ActiveRecord::Base
    attr_accessible :text, :author, :article_id
  
  belongs_to :article
end
