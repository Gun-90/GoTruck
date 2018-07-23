class MenusController < ApplicationController
  before_action :authenticate_user!,except: [:index]
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  
  def index
    @truck = Truck.find(params[:truck_id])
    @menus = @truck.menus
    @menu_new = Menu.new 
    
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
    @truck= Truck.find(params[:truck_id])
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(params.require(:menu).permit(:menu_name, :menu_price, :menu_image, :menu_category, :menu_state))
    @truck = Truck.find(params[:truck_id])
    @menu.truck_id = params[:truck_id]
    respond_to do |format|
      if @menu.save
        format.html { redirect_to truck_menus_path(@truck), notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:menu_name, :truck_id, :menu_price, :menu_image, :menu_category, :menu_state)
    end
end
