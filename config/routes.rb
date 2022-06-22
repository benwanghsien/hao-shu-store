Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources 'books', except: [:index] do
  end
end
