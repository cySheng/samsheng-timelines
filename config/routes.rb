Rails.application.routes.draw do
  resources :timelines, only: [:create, :index]
  root "timelines#index"
end
