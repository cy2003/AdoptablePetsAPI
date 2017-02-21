class Api::V1::CurrentUserController < ApplicationController

  def index
    render json: active_user
  end

end
