Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resource :profile, only: [:edit, :update, :show]
  resources :playgrounds, only: [:index, :new, :create, :show]
  resources :events do
    resources :playgrounds, only: [ :create, :edit ]
  end

  namespace :playgrounds do
    resources :events, only: [:index, :show]

    resources :events, only: [] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
