Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  root to: 'homes#top'
  get '/homes/about', to: 'homes#about', as: 'about'
  devise_for :users

  resources :post_images, only: [:new, :index, :show, :create, :destroy]
end
