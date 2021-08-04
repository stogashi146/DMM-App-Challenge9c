Rails.application.routes.draw do
  get 'rakutens/rakuten_search'
  # resources :users,only: [:show,:index]
  root to: 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about'
  resources :books do
    resource :favorites,only:[:create,:destroy]
    resources :post_comments,only:[:create,:destroy]
  end
  resources :users,only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get "followings" => "relationships#followings",as:"followings"
    get "followers" => "relationships#followers",as:"followers"
  end
  get "search" => "searches#search"
  resources :user_groups do
    get "join" => "user_groups#join"
    get "mail" => "user_groups#mail"
    post "mail_send" => "user_groups#send"
  end

end