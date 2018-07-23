class TruckReviewsController < ApplicationController
    before_action :authenticate_user!
    def create
        # @truck_review = Truck_review.new(params.require(:review).permit())
        
        if @truck_reviews.save
        end
    end
    
    def destroy
    end

end
