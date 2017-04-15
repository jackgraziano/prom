Rails.application.routes.draw do
  resources :clients
  resources :dresses

  root 'pages#root'
end
