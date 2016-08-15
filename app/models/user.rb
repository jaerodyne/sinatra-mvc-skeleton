require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  # has_many

  validates :username, :email, presence: true

  def password
    @password ||= Password.new(hash_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hash_password = @password
  end

  def authenticate(input_string)
    self.password == input_string
  end
end