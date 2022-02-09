Rails.application.routes.draw do
  devise_for :users
  get 'moneys/index'
  root to: "moneys#index"
  resources :users
  resources :moneys
end
