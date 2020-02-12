Rails.application.routes.draw do
  resources :songs, only: [:index, :show,:new, :update, :edit, :create]
  resources :genres, only: [:index, :show,:new, :update, :edit, :create]
  resources :artists, only: [:index, :show,:new, :update, :edit, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
