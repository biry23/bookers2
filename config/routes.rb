Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get 'home/about' => 'home#about', as: 'about'
  resources :users
  resources :books, only: [:index, :show, :create, :edit, :destroy, :update]

end
