Rails.application.routes.draw do
  devise_for :users
  get 'moneys/index'
  root to: "moneys#index"
  resources :moneys do
    get 'lastmonthsearch', on: :member
  end
  resources :users
  resources :memos
end
