class TrucksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :recommend]
  before_action :set_truck, only: [:show, :edit, :update, :destroy]

  # GET /trucks
  # GET /trucks.json
  def index
    @trucks = Truck.all
  end

  # GET /trucks/1
  # GET /trucks/1.json
  def show
    @menus = @truck.menus
    @truck_reviews = @truck.truck_reviews.page params[:page]
    @truck_review = TruckReview.new
    if Like.find_by(user: current_user, truck: @truck).nil?
      @button = '좋아요'
    else
      @button = '좋아요 취소'
    end
  end

  # GET /trucks/new
  def new
    @truck = Truck.new
  end

  # GET /trucks/1/edit
  def edit
  end

  # POST /trucks
  # POST /trucks.json
  def create
    @truck = Truck.new(truck_params)
    @truck.user_id = current_user.id
    respond_to do |format|
      if @truck.save
        format.html { redirect_to @truck, notice: 'Truck was successfully created.' }
        format.json { render :show, status: :created, location: @truck }
      else
        format.html { render :new }
        format.json { render json: @truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trucks/1
  # PATCH/PUT /trucks/1.json
  def update
    respond_to do |format|
      if @truck.update(truck_params)
        format.html { redirect_to @truck, notice: 'Truck was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck }
      else
        format.html { render :edit }
        format.json { render json: @truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trucks/1
  # DELETE /trucks/1.json
  def destroy
    @truck.destroy
    respond_to do |format|
      format.html { redirect_to trucks_url, notice: 'Truck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def recommend
    @truck = Truck.all
  end
  
   def map_data
#    @schools = School.all.limit(1000).to_json
    max = JSON.parse(params[:max])
    min = JSON.parse(params[:min])
    
    min_lat = min['_lat']
    min_lng = min['_lng']
    max_lat = max['_lat']
    max_lng = max['_lng']
    
    #해당 바운스 안에 있는 학교만 찾음 - 랜덤 최대 500개
    @schools = School.where("(lat BETWEEN ? and ? ) and (lng BETWEEN ? and ?)", min_lat, max_lat, min_lng, max_lng).sample(500)
    
    respond_to do |format|
      format.json {render json: @schools}
    end
  end
  
  #네이버지도 페이지
  def map
    @schools = School.all.limit(1000).to_json
    @search = params[:location]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
      @truck = Truck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:truck_name, :truck_x, :truck_y, :truck_sns, :truck_sns2, :truck_phone, :truck_cover, :truck_category)
    end
end
