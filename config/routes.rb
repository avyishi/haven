Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :movies do
    resources :reviews, except: [:index]
  end

  resources :shows do
    resources :reviewtvs, except: [:show, :index]
  end
    
     get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
