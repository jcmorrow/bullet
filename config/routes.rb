Rails.application.routes.draw do
  root "pages#index"

  resources :articles, only: [:new, :create, :show]
end
