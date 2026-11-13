# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :require_login

  # 投稿一覧画面（検索機能付き）
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user)
  end

  # 投稿詳細画面
  def show
    @post = Post.find(params[:id])
  end

  # 新規投稿画面
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, notice: '投稿しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
