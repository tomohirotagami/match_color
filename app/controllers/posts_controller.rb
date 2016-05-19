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
      if post.user_id == current_user.id
        post.update(update_params)
      end
  end

  def destroy
    post = Post.find(params[:id])
      if post.user_id == current_user.id
        post.destroy
      end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
  end

  def update_params
    params.permit(:image, :text)
  end

  def purchase    #webpay
    webpay = WebPay.new(WEBPAY_SECRET_KEY)
    webpay.charge.create(currency: 'jpy', amount: 1000, card: params['webpay-token'])
  end

  private
  def post_params
    params.require(:post).permit(:image, :text)
  end



end
