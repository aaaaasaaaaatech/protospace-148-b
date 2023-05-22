Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
<<<<<<< Updated upstream
  resources :prototypes, only: [:new, :create, :index, :show] 
=======
  resources :prototypes
>>>>>>> Stashed changes
end
