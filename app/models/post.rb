class Post < ActiveRecord::Base
  attr_accessible :title, :content, :original_url, :user_id

  belongs_to :user
  has_many :comments
  has_many :postvotes

end
