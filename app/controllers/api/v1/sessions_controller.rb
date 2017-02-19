class Api::V1::SessionsController < ApplicationController
  # creates on sign in
  def create
    user = User.find_by(email: params[:email])

    if !!user.is_rescue
      user && user.authenticate(params[:password])
      jwt = Auth.issue({user: user.id})
        render json:{
          user: user.id,
          is_rescue: user.is_rescue,
          rescue_id: user.rescue.id,
          jwt: jwt
        }
    elsif
      user && user.authenticate(params[:password])
      jwt = Auth.issue({user: user.id})
        render json: {
          user: user.id,
          is_rescue: user.is_rescue,
          adopter_id: user.adopter.id,
          jwt: jwt
        }
      # * need to send back the rescue id
    else
      render json: {:errors=>
       [{:detail=>"incorrect email or password",
         :source=>{:pointer=>"user/err_type"}}
       ]}, status: 404
    end
  end


  # private
  #
  # def user_params
  #   params.require(:user).permit(:email, :password)
  # end

end
