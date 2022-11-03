Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  resources :likes, only: [:index, :update]
  
  # patch "birds/:id/like", to: 'likes#index'
end
