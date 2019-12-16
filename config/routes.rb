Rails.application.routes.draw do
  resources :tasks
  resources :event_tasks
  resources :events

  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to:'home#request_contact'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
