class V1::AutorecordsController < ApplicationController
  before_action :set_autorecord, only: [:show, :update, :destroy]

  # GET /autorecords
  def index
    @autorecords = Autorecord.all

    render json: @autorecords
  end

  # GET /autorecords/1
  def show
    render json: @autorecord
  end

  # POST /autorecords
  def create
    @autorecord = Autorecord.new(autorecord_params)

    if @autorecord.save
      render json: @autorecord, status: :created, location: @autorecord
    else
      render json: @autorecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /autorecords/1
  def update
    if @autorecord.update(autorecord_params)
      render json: @autorecord
    else
      render json: @autorecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /autorecords/1
  def destroy
    @autorecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autorecord
      @autorecord = Autorecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def autorecord_params
      params.require(:autorecord).permit(:avgambienttemp, :barometricpressure, :avgengineload, :avrmp, :fuelconsumption, :avgenginetemp, :hspeed, :avgspeed, :runtime, :distancetravelled, :automo_id, :trip_id)
    end
end
