Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
