Midas::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  get '/help', to: 'static_pages#help', as: :help
  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact
  get '/privacy-policy', to: 'static_pages#privacy', as: :privacy_policy
  get '/terms-of-service', to: 'static_pages#tos', as: :terms_of_service

end
