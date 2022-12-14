class User < ApplicationRecord
  before_save {self.email = email.downcase }
  validates :last_name, :first_name, :email, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
