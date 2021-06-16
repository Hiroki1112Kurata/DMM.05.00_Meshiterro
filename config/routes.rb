Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    # 単数にすると、idがリクエストに含まれなくなる
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:create, :destroy]
  end

end
