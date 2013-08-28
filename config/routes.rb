Midas::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  # Static Pages Routes
  get '/help', to: 'static_pages#help', as: :help
  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact
  get '/privacy-policy', to: 'static_pages#privacy', as: :privacy_policy
  get '/terms-of-service', to: 'static_pages#tos', as: :terms_of_service
  get '/coming-soon', to: 'static_pages#coming_soon', as: :coming_soon
  post '/message', to: 'static_pages#send_message', as: :send_message
  get '/dashboard', to: 'static_pages#dashboard', as: :dashboard

  # Marketing Pages Routes
  get '/ticker-plant', to: 'marketing#ticker_plant', as: :ticker_plant
  get '/historical-database', to: 'marketing#historical_db', as: :historical_db
  get '/trade-scanner-viewer', to: 'marketing#trade_scanner_viewer', as: :trade_scanner_viewer
  get '/network', to: 'marketing#network', as: :network
  post '/subscribe', to: 'marketing#subscribe', as: :subscribe
  get '/sign-up-success', to: 'marketing#sign_up_success', as: :sign_up_success

end
