Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  get 'items/detail' => "items#detail"
  resources :items
  get 'personal_datas/' => "personal_datas#identification"

  resource :users do

    member do
      get 'profile'
      get 'mypage'
    end

    collection do
      get 'logout'
    end
  end
end
