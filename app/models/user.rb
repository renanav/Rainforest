class User < ActiveRecord::Base
  validates :name, :email, presence: true, length: { maximum: 50 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, format: { with: VALID_EMAIL_REGEX }

  has_many :reviews
end
