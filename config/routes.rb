Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cars, only: [:index, :update]
      resources :users
<<<<<<< HEAD
      resources :games
=======
      resources :games, only: [:index,:update, :create]
>>>>>>> 41763deb991aff8c59c206d713b155308ef476ef
    end
  end
end
