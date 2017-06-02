Rails.application.routes.draw do
  resource :session

  resources :users
  root "movies#index"
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'
  resources :movies do
    resources :reviews
  end
end
