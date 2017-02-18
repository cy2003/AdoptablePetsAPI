class Api::V1::PetsController < ApplicationController

  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    
  end


end
