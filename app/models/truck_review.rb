class TruckReview < ApplicationRecord
  belongs_to :user
  belongs_to :truck
  mount_uploader :truck_review_image, TruckReviewPictureUploader
end
