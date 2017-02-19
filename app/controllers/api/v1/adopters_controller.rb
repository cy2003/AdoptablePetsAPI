class Api::V1::AdoptersController < ApplicationController

  def create
    adopter1 = Adopter.new
    adopter1.user = active_user
    if adopter1.save
      render json: {adopter: adopter1}
    end
  end

  def index
    render json: Adopter.all
  end

  def show
    @adopter = Adopter.find(params[:id])
    render json: @adopter
  end



end
