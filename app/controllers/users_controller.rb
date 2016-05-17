class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @show = true
    @posts = @user.posts.includes(:user).page(params[:page]).per(8).order("created_at DESC")
  end

  def edit
    @edit = true
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :avatar)
  end
end
