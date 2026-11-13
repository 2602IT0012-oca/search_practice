# app/controllers/mypages_controller.rb
class MypagesController < ApplicationController
  before_action :require_login

  # ユーザ一覧画面（検索機能付き）
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  # マイページ画面
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
