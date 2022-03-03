Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books, only: [:index, :show, :create]

  root to: "homes#top"



end
