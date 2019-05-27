class V1::CreatorsController < ApplicationController

  def create
      @creator = Creator.new(email: params[:email], password: params[:password])

      if @creator.save
        render json: @creator.as_json(only: [:email]), status: :created#, location: @creator
      else
        render json: @creator.errors, status: :unprocessable_entity
      end
  end

end
