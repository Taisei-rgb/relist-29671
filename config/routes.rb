Rails.application.routes.draw do
  devise_for :users
  get 'notes/index'
  resources :notes do
    collection do 
      get 'search'
    end
  end
  root to: "notes#index"
end
