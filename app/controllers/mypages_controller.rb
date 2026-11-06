class MypagesController < ApplicationController
  before_action :require_login
  def show
    @user = current_user
    @posts = @user.posts
  end
end
