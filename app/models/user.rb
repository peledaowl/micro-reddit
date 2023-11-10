class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password

  has_many :posts
end
