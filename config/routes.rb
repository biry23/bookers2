Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  resources :users
  resources :books, only: [:index, :show, :create, :edit, :destroy]

end
