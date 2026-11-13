# config/routes.rb
Rails.application.routes.draw do
  root 'posts#index'

  # サインアップ・ユーザ関連
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  # ログイン・ログアウト関連
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # ユーザ一覧・マイページ（mypages_controller）
  resources :mypages, only: [:index, :show]

  # 投稿関連
  resources :posts, only: [:index, :show, :new, :create]
end
