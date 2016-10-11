class UserItinerariesController < ApplicationController
  before_action :set_user_itinerary, only: [:show, :edit, :update, :destroy]

  # GET /user_itineraries
  # GET /user_itineraries.json
  def index
    @user_itineraries = UserItinerary.all
  end

  # GET /user_itineraries/1
  # GET /user_itineraries/1.json
  def show
  end

  # GET /user_itineraries/new
  def new
    @user_itinerary = UserItinerary.new
  end

  # GET /user_itineraries/1/edit
  def edit
  end

  # POST /user_itineraries
  # POST /user_itineraries.json
  def create
    @user_itinerary = UserItinerary.new(user_itinerary_params)

    respond_to do |format|
      if @user_itinerary.save
        format.html { redirect_to @user_itinerary, notice: 'User itinerary was successfully created.' }
        format.json { render :show, status: :created, location: @user_itinerary }
      else
        format.html { render :new }
        format.json { render json: @user_itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_itineraries/1
  # PATCH/PUT /user_itineraries/1.json
  def update
    respond_to do |format|
      if @user_itinerary.update(user_itinerary_params)
        format.html { redirect_to @user_itinerary, notice: 'User itinerary was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_itinerary }
      else
        format.html { render :edit }
        format.json { render json: @user_itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_itineraries/1
  # DELETE /user_itineraries/1.json
  def destroy
    @user_itinerary.destroy
    respond_to do |format|
      format.html { redirect_to user_itineraries_url, notice: 'User itinerary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_itinerary
      @user_itinerary = UserItinerary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_itinerary_params
      params.require(:user_itinerary).permit(:belongs_to, :belongs_to)
    end
end
