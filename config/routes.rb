Rails.application.routes.draw do
  devise_for :users
    $date = Time.now.in_time_zone('Tokyo').to_s
    root "shops#index"
    resources :shops, only: :index
  end