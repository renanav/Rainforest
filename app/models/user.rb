class User < ActiveRecord::Base
  validates :name, :email, :password, presence: true,  uniqueness: true
  has_many :reviews

end
