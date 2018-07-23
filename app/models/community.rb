class Community < ApplicationRecord
  belongs_to :user
  validates :community_title, :community_content, :user_id ,presence: true
end
