Rails.application.routes.draw do
  resources :movies
    resources :reviews
  
  resources :shows

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

     get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
