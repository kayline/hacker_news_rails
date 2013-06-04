class Commentvote < ActiveRecord::Base
  attr_accessible :vote_value, :comment_id, :user_id

  belongs_to :comment
end
