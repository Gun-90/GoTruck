class TruckReview < ApplicationRecord
  belongs_to :user
  belongs_to :truck
  mount_uploader :truck_review_image, TruckReviewPictureUploader
  validates :truck_review_content ,presence: true
end
