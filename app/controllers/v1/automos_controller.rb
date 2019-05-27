class V1::AutomosController < ApplicationController
  before_action :set_automo, only: [:show, :update, :destroy]

  # GET /automos
  def index
    @automos = Automo.all

    render json: @automos
  end

  # GET /automos/1
  def show
    render json: @automo
  end

  # POST /automos
  def create
    @automo = Automo.new(automo_params)

    if @automo.save
      render json: @automo, status: :created, location: @automo
    else
      render json: @automo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /automos/1
  def update
    if @automo.update(automo_params)
      render json: @automo
    else
      render json: @automo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /automos/1
  def destroy
    @automo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automo
      @automo = Automo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def automo_params
      params.require(:automo).permit(:name, :displacement, :enginetype, :cargocapacity, :drivenwheels, :vinnumber, :transmission, :engineconfiguration, :forcedinduction, :passengerseats, :urgency, :idle, :creator_id)
    end
end
