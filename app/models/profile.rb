class Profile < ApplicationRecord
  belongs_to :user
  validates :profile_name,:profile_mobile, :profile_adress ,:profile_birthday ,presence: true
end
