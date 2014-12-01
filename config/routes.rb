Rails.application.routes.draw do
  

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  resources :shows

     get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
