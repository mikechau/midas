Midas::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  get '/help', to: 'static_pages#help', as: :help

end
