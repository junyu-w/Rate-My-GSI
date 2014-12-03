Rails.application.routes.draw do

  root to: 'gsis#index'
  devise_for :users
  resources :users
  resources :gsis do |g|
    resources :comments do |c|
      resources :replys
    end
  end

end
