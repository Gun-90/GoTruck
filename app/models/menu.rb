class Menu < ApplicationRecord
  belongs_to :truck
  validates :menu_name, :menu_price, :menu_category ,presence: true
end
