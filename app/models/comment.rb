class Comment < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :post_id

  belongs_to :post 
  belongs_to :user
  has_many :commentvotes

end
