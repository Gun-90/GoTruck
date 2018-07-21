class Truck < ApplicationRecord
    belongs_to :user
    has_many :menus, dependent: :delete_all
    has_many :postings, dependent: :delete_all
    has_many :truck_reviews, dependent: :delete_all
    validates :user, uniqueness: true
    validates :truck_name, :truck_category, presence: true
end
