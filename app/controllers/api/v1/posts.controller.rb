class Api::V1::PostsController < ApplicationController

  def index
  end

  def create
    binding.pry
    post1 = Post.new(params)
    post1.pet = pet_post
    if post1.save
      render json: {post: post1}
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

end
