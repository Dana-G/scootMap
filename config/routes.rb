Rails.application.routes.draw do
  resources :parking_spots

  root to: "visitors#index"
end
