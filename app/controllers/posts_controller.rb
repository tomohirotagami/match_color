class PostsController < ApplicationController

  def new
    @post = true
  end

  def create
    Post.create(image: params[:image], text: params[:text], user_id: current_user.id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
      if post.user_id == current_user.id
        post.destroy
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def create_params
    params.permit(:image, :text)
  end

end
