class Truck < ApplicationRecord
    belongs_to :user
    has_many :menus
    has_many :postings
    has_many :truck_reviews
    validates :user, uniqueness: true
    validates :truck_name, :truck_category, presence: true
end
