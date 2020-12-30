Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: "confirmations" }
  root 'tasks#index'

  resources :tasks do
    put :complete, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
