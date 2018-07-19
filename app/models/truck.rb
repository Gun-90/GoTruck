class Truck < ApplicationRecord
    belongs_to :user
    has_many :menus
    has_many :postings
    has_many :truck_reviews
end
