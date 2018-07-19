class Posting < ApplicationRecord
  belongs_to :truck
  has_many :posting_part
end
