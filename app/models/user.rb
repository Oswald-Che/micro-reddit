class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :password, length: { in: 5...20 }
  validates :email, :name, presence: true, uniqueness: true
end
