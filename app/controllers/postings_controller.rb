class PostingsController < ApplicationController
  before_action :set_posting, only: [:show, :edit, :update, :destroy]

  # GET /postings
  # GET /postings.json
  def index
    @postings = Posting.all
  end

  # GET /postings/1
  # GET /postings/1.json
  def show
    @truck = Truck.find(params[:truck_id])
  end

  # GET /postings/new
  def new
    @truck = Truck.find(params[:truck_id])
    @posting = Posting.new
  end

  # GET /postings/1/edit
  def edit
    @truck = Truck.find(params[:truck_id])
  end

  # POST /postings
  # POST /postings.json
  def create
    @truck = Truck.find(params[:truck_id])
    @posting = Posting.new( params.require(:posting).permit(:posting_title))
    @posting.truck_id = params[:truck_id]
    

    respond_to do |format|
      if @posting.save
        format.html { redirect_to [@truck,@posting], notice: 'Posting was successfully created.' }
        format.json { render :show, status: :created, location: @posting }
      else
        format.html { render :new }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postings/1
  # PATCH/PUT /postings/1.json
  def update
    @truck = Truck.find(params[:truck_id])
    respond_to do |format|
      if @posting.update(posting_params)
        format.html { redirect_to @posting, notice: 'Posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting }
      else
        format.html { render :edit }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.json
  def destroy
    @posting.destroy
    respond_to do |format|
      format.html { redirect_to postings_url, notice: 'Posting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting
      @posting = Posting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_params
      params.require(:posting).permit(:posting_title, :truck_id)
    end
end
