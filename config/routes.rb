Rails.application.routes.draw do


  get 'movies/index'

  devise_for :users
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
