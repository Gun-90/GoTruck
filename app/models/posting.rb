class Posting < ApplicationRecord
  belongs_to :truck
  has_many :posting_parts, dependent: :delete_all
  has_many :posting_reviews, dependent: :delete_all
  has_many :likes, dependent: :delete_all
end
