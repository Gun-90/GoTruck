class Truck < ApplicationRecord
    belongs_to :user
    has_many :menus, dependent: :delete_all
    has_many :postings, dependent: :delete_all
    has_many :truck_reviews, dependent: :delete_all
    has_many :likes, dependent: :delete_all
    # has_many :liked_users, through: :likes, source: :user
    
    validates :user, uniqueness: true
    validates :truck_name, presence: true
    mount_uploader :truck_cover, TruckPictureUploader
end
