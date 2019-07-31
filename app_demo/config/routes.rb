Rails.application.routes.draw do
  get     "login"    => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"

  get 'home/top'

  # Add thêm route about
  get "home/about" => "home#about"

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
