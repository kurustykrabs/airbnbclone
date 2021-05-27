Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'


  # mount LetterOpenerWeb::Engine, at: "/users/confirmation" if Rails.env.development?
  # mount LetterOpenerWeb::Engine, at: "/users/inbox" if Rails.env.development?

  #letter_opener is modifiable

  resources :rooms


end
