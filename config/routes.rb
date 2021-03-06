Rails.application.routes.draw do

  root to: 'pages#accueil'
 
  resources :posts
  resources :categories
  resource  :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update] do
    member do
      get 'confirm'
    end
  end
  
  get '/accueil', to: 'pages#accueil', as: 'accueil'

end