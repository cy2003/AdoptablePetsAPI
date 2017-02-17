class ApplicationController < ActionController::API

  def active_user
    token = request.headers["HTTP_AUTHORIZATION"]
    if !token.blank?
      user_id = Auth.decode(token)
      User.find_by(id: user_id["user"])
    end  
  end
end
