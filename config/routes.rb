Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  resources :excategories
  resources :expenses
  resources :incategories
  resources :incomes
  resources :statistics
  resources :homepage
  resources :instats
  mount ReportsKit::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
