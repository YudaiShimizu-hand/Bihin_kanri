Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  resources :manages do
      resources :comments, only: [:create]
  end
  get 'search', to: 'manages#search'
end
