class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :nickname, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :truck
  has_one :profile
  has_many :followings
  has_many :likes
  has_many :comments
  # has_many :liked_trucks, through: :likes, source: :truck
  
  # def is_like? (post)
  #   Like.find_by(user.id: self.id, truck_id: truck.id).present?
  # end
end
