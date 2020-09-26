Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  post 'notes/search'
  resources :notes do
    collection do 
      get 'search'
    end
  end
  root to: "notes#index"
end
