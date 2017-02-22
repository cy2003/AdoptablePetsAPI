class Api::V1::PostsController < ApplicationController

  def create
    post1 = Post.new(post_params)
    if post1.save
      render json: {post: post1}
    end
  end

  def index
    render json: Post.all
  end

  private

  def post_params
    params.require(:post).permit(:date, :description, :image, :pet_id)
  end

end
