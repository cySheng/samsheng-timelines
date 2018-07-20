Rails.application.routes.draw do
  resources :timelines, only: [:new, :create, :index]
  root "timelines#index"
end
