class TruckReviewsController < ApplicationController
    before_action :authenticate_user!
    def create
        @truck_review = TruckReview.new(params.require(:truck_review).permit(:truck_review_content,:truck_review_image))
        @truck_review.user_id = current_user.id
        @truck_review.truck_id = params[:truck_id]
        @truck_review.save
        
        # if @truck_reviews.save
        # end
    end
    
    def destroy
    end

end
