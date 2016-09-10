class EventPlacesController < ApplicationController
  before_action :set_event_place, only: [:show, :edit, :update, :destroy]

  # GET /event_places
  # GET /event_places.json
  def index
    @event_places = EventPlace.all
  end

  # GET /event_places/1
  # GET /event_places/1.json
  def show
  end

  # GET /event_places/new
  def new
    @event_place = EventPlace.new
  end

  # GET /event_places/1/edit
  def edit
  end

  # POST /event_places
  # POST /event_places.json
  def create
    @event_place = EventPlace.new(event_place_params)

    respond_to do |format|
      if @event_place.save
        format.html { redirect_to @event_place, notice: 'Event place was successfully created.' }
        format.json { render :show, status: :created, location: @event_place }
      else
        format.html { render :new }
        format.json { render json: @event_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_places/1
  # PATCH/PUT /event_places/1.json
  def update
    respond_to do |format|
      if @event_place.update(event_place_params)
        format.html { redirect_to @event_place, notice: 'Event place was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_place }
      else
        format.html { render :edit }
        format.json { render json: @event_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_places/1
  # DELETE /event_places/1.json
  def destroy
    @event_place.destroy
    respond_to do |format|
      format.html { redirect_to event_places_url, notice: 'Event place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_place
      @event_place = EventPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_place_params
      params.require(:event_place).permit( :name, :city, :estado, :logradouro, :numero, :bairro, :referencia)
    end
end
