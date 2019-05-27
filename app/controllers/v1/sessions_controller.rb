class V1::SessionsController < ApplicationController

  # POST /sessions
  def create
    @creator = Creator.where(email: params[:email]).first

    if @creator&.valid_password?(params[:password])
      @automo = Automo.where(creator_id: @creator.id)

      #render json: @creator.as_json(only: [:email]) && @automo.as_json(only: [:name]), status: :created
      render json: @automo.as_json(only: [:name, :displacement, :enginetype, :vinnumber], include: [:creator]), status: :created
    else
      head(:unauthorized)
    end
  end

  # DELETE /sessions/1
  def destroy
    #@automo.destroy
  end
end
