class TruckReviewsController < ApplicationController
    before_action :authenticate_user!
    def create
        @truck = Truck.find(params[:truck_id])
        @truck_review = TruckReview.new(params.require(:truck_review).permit(:truck_review_content,:truck_review_image))
        @truck_review.user_id = current_user.id
        @truck_review.truck_id = params[:truck_id]
        
        respond_to do |format|
          if @truck_review.save
            format.html { redirect_to @truck, notice: 'Truck Review was successfully created.' }
            format.json { render :show, status: :created, location: @truck }
          else
            format.html { render :new }
            format.json { render json: @truck.errors, status: :unprocessable_entity }
         end
    end
        
        # if @truck_reviews.save
        # end
    end
    
    def destroy
        @truck = Truck.find(params[:truck_id])
        @truck_review = TruckReview.find(params[:id])
        @truck_review.destroy
        respond_to do |format|
          format.html { redirect_to truck_path(@truck.id), notice: 'Truck Review was successfully destroyed.' }
          format.json { head :no_content }
        end
    end

end
