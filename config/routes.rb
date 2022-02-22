Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'corporates#index'
  resources :corporates, only: [:index, :new, :create, :show, :update, :destroy]
end
