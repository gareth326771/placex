require 'sidekiq/web'

Rails.application.routes.draw do
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  get '/test', to: 'home#test', as: :test
  get '/customers', to: 'home#customers', as: :customers
  get '/tradesmen', to: 'home#tradesmen', as: :tradesmen
  get '/faq', to: 'home#faq', as: :faq

  get '/s/:slug', to: 'links#show', as: :short
  resources :job_payments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
