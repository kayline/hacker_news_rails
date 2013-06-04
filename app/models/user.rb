class User < ActiveRecord::Base
  attr_accessible :username, :password_hash

  has_many :posts
  has_many :comments

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

end
