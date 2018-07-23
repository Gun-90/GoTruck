class LikesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token  
    def like_toggle
        @like = Like.find_by(user: current_user, truck_id: params[:truck_id])
        if @like.nil?
          Like.create(user: current_user, truck_id: params[:truck_id])   
        else
          @like.destroy
        end
          redirect_to truck_url(params[:truck_id])
  end
end
