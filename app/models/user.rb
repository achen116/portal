class User < ActiveRecord::Base
  include BCrypt

  has_many  :products

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :encrypted_pw, presence: true, length: { minimum: 6 }

  def password
    @password ||= Password.new(encrypted_pw)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_pw = @password
  end

  def self.create_from_facebook(access_token)
    profile = Facebook.user_profile(access_token)
    first_name = profile["first_name"]
    last_name = profile["last_name"]

    user = User.where(first_name: first_name, last_name: last_name).first()

    if !user
      self.create(facebook_token: access_token, first_name: first_name, last_name: last_name)
    else
      user
    end
  end
end
