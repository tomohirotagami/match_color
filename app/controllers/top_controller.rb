class TopController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :authenticate_user!, only: :index

  def index
    @users = Top.order("id ASC").page(params[:page]).per(16)
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
