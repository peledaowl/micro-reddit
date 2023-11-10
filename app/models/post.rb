class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates :body, presence: true, length: { minimum: 10 }
  validates :user, presence: true
end
