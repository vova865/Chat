Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:new, :show, :index, :create]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'
end
