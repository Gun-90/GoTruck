class CommentsController < ApplicationController
    def create
        @community = Community.find(params[:community_id])
        @comment = Community.new(params.require(:comment).permit(:community_comment))
        @comment.user_id = current_user.id
        @comment.coummunity_id = params[:coummunity_id]
        
        respond_to do |format|
          if @comment.save
            format.html { redirect_to @community, notice: 'Community Review was successfully created.' }
            format.json { render :show, status: :created, location: @community }
          else
            format.html { render :new }
            format.json { render json: @truck.errors, status: :unprocessable_entity }
            end
        end
        
    end
    
    # def destroy
    #     @community = Community.find(params[:community_id])
    #     @comment = Comment.find(params[:id])s
    #     @comment.destroy
    #     respond_to do |format|
    #       format.html { redirect_to truck_path(@truck.id), notice: 'Truck Review was successfully destroyed.' }
    #       format.json { head :no_content }
    #     end
    # end

end
