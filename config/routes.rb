Rails.application.routes.draw do
  root "consultants#index"

  resources :consultants
end
