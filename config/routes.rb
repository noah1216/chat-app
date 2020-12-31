Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
    # メッセージを投稿するとき、どのルームでするのか指定するため（メッセージのパスにルームのIDを含めるため）ネストする
  end
end
