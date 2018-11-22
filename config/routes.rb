Rails.application.routes.draw do

  # resources :emails
  get 'emails/index'
  root to: "emails#index"
  get 'emails/:id', to: 'emails#show', as: :email
  get 'emails/unread/:id', to: 'emails#unread', as: :email_unread
  delete 'emails/:id', to: 'emails#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
