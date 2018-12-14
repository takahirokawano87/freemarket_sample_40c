Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items
  get 'personal_datas/' => "personal_datas#identification"
  resource :user, only: :show
end
