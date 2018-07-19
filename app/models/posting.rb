class Posting < ApplicationRecord
  belongs_to :truck
  has_many :posting_parts
  has_many :posting_reviews
  has_many :likes
end
