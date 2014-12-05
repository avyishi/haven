Rails.application.routes.draw do
  resources :reviewtvs

  resources :movies do
    resources :reviews, except: [:index]
  end

  resources :shows do
    resources :reviewtvs, except: [:index]
  end
    

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

     get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
