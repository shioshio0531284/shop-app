Rails.application.routes.draw do
  Rails.application.routes.draw do
    $date = Time.now.in_time_zone('Tokyo').to_s
    root "shops#index"
    resources :shops, only: :index
  end
end
