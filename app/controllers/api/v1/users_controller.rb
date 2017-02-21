class Api::V1::UsersController < ApplicationController

  def index

  end

# this creates a new user. Creates on sign up
  def create
    user = User.new(user_params)
    if params[:password] == params[:password_confirmation]
      user.password = params[:password]
      if user.save
        jwt = Auth.issue({user: user.id})
        if params[:user][:rescue] == true
          user.rescue = Rescue.new(user_id: user[:id])
          user.save
          render json: {rescue: user[:rescue], jwt: jwt}
        else
          user.adopter = Adopter.new(user_id: user[:id])
          user.save
          render json: {adopter: user[:adopter], jwt: jwt}
        end

      else
        render json: {:errors=>
         [{:detail=>"incorrect email or password",
           :source=>{:pointer=>"user/err_type"}}
         ]}, status: 404
      end
    else
      render json: {:errors=>
       [{:detail=>"incorrect email or password",
         :source=>{:pointer=>"user/err_type"}}
       ]}, status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :rescue)
  end

end
