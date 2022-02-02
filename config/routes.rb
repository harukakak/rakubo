Rails.application.routes.draw do
  get 'moneys/index'
  root to: "moneys#index"
end
