class UsersController < ApplicationController
  def index
    @users = User.search(params[:keyword])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to mypage_path, notice: "サインアップしました"
    else
      render :new, status: :unproessble_entity
  end
end
