Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  resources :notes
  root to: "notes#index"
end
