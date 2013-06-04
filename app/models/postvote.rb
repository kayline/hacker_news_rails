class Postvote < ActiveRecord::Base
  attr_accessible :vote_value, :post_id, :user_id

  belongs_to :post
end
