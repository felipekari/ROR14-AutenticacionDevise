Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :stories
  get '/users/:id', to: 'users#show', as: 'show_user'
  get 'control_panel', to: 'users#control_panel'

  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
