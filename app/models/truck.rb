class Truck < ApplicationRecord
    belongs_to :user
    has_one :truck
    has_many :menus
end
