Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "cocktails", to: "cocktails#index"
  # get "cocktails/:id", to: "cocktails#show"
  # get "cocktails/new", to: "cocktails#new"
  # post "cocktails", to: "cocktails#create"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
