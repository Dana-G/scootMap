Rails.application.routes.draw do
  resources :checkins

  resources :parking_spots

  root to: "visitors#index"
end
