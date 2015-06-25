class User < ActiveRecord::Base
  include BCrypt

  has_many  :products

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_pw, presence: true, length: { minimum: 6 }

  def password
    @password ||= Password.new(encrypted_pw)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_pw = @password
  end

end
