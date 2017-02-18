class Api::V1::RescuesController < ApplicationController

  def create
    rescue1 = Rescue.new(rescue_params)
    rescue1.user = active_user
    if rescue1.save
      render json: {rescue: rescue1}
    end
  end

  def index
    render json: Rescue.all
  end

  def show
    @rescue = Rescue.find(params[:id])
    render json: @rescue
  end

  private

  def rescue_params
    params.require(:rescue).permit(:organization_name, :street_address, :city, :state, :zipcode, :website, :phone)
  end

end
