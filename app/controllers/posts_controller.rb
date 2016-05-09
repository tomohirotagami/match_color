class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(image: params[:image], text: params[:text])
  end

  private
  def post_params
    params.permit(:image, :text)
  end

end
